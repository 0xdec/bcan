#include "beacon.h"

/* Protocol specifications */
#define BIT_PERIOD      960
#define NUM_BITS        16
#define BUFFER_LENGTH   (((2 * NUM_BITS) + 2) * 2)
#define MESSAGE_LENGTH  ((NUM_BITS + 8) * BIT_PERIOD)
/* 1MHz */
#define TIMER_FREQUENCY 1000000
/* TIM3 CH3 */
#define R_PIN PB0
#define R_IC  TIM_IC3
#define R_IF  TIM_SR_CC3IF
#define R_CCR TIM3_CCR3
/* TIM3 CH4 */
#define L_PIN PB1
#define L_IC  TIM_IC4
#define L_IF  TIM_SR_CC4IF
#define L_CCR TIM3_CCR4


beacon_t beacon = {
	.id   = 0x0000,
	.side = 0
};

volatile bool is_reading  = false;
volatile bool is_parsed   = true;
volatile uint8_t received = 0;
volatile uint16_t buffer[BUFFER_LENGTH];
volatile uint16_t sensor  = 0;
volatile uint32_t total   = 0;


void tim3_isr(void) {
	uint16_t pin = 0;
	uint16_t pulse_length = 0;

	if (timer_get_flag(TIM3, R_IF)) {
		timer_clear_flag(TIM3, R_IF);
		pulse_length = R_CCR;
		pin = PIN(R_PIN);
	} else if (timer_get_flag(TIM3, L_IF)) {
		timer_clear_flag(TIM3, L_IF);
		pulse_length = L_CCR;
		pin = PIN(L_PIN);
	} else if (timer_get_flag(TIM3, TIM_SR_UIF)) {
		/* Timeout has ocurred, prepare for a new beacon. */
		timer_clear_flag(TIM3, TIM_SR_UIF);
		is_reading = false;
		sensor = 0;
		received = 0;
		timer_disable_update_event(TIM3);
		return;
	} else {
		timer_clear_flag(TIM3, 0x1E66);
		return;
	}

	if (!is_reading && (received == 0) && (pin != 0)) {
		/* Reset the counter. */
		timer_set_counter(TIM3, 0x0000);

		if (sensor == 0) {
			/* First edge detected. Enable timeout event. */
			timer_enable_update_event(TIM3);

			/* Store which sensor is receiving. */
			sensor = pin;
		} else {
			/* Second edge detected. Set is_reading flag. */
			is_reading = true;

			/* Reset the total received length. */
			total = 0;
		}
	} else if (is_reading && (pin == sensor)) {
		/* Reset the counter. */
		timer_set_counter(TIM3, 0x0000);

		if (received < BUFFER_LENGTH) {
			/* Store the edge data. */
			buffer[received] = pulse_length | ((received % 2) << 15);
			total += pulse_length;
			received++;

			#ifdef BEACON_FAST_PARSE
			if ((received == BUFFER_LENGTH) || (total >= MESSAGE_LENGTH)) {
			#else
			if (received == BUFFER_LENGTH) {
				#endif
				is_parsed = false;
			}
		}
	}
}

void beacon_setup(void) {
	/* Set sensor pins to 'alternate function floating'. */
	gpio_mode_setup(PORT(R_PIN), GPIO_MODE_AF, GPIO_PUPD_NONE, PIN(R_PIN));
	gpio_mode_setup(PORT(L_PIN), GPIO_MODE_AF, GPIO_PUPD_NONE, PIN(L_PIN));

	/* Set sensor pins to alternate function 2. */
	gpio_set_af(PORT(R_PIN), GPIO_AF2, PIN(R_PIN));
	gpio_set_af(PORT(L_PIN), GPIO_AF2, PIN(L_PIN));

	/* Enable TIM3 clock. */
	rcc_periph_clock_enable(RCC_TIM3);

	/* Enable TIM3 interrupt. */
	nvic_enable_irq(NVIC_TIM3_IRQ);

	/* Reset TIM3 peripheral to defaults. */
	timer_reset(TIM3);

	/* Set timer mode: 2x clock divider, edge aligned, direction up. */
	timer_set_mode(TIM3, TIM_CR1_CKD_CK_INT_MUL_2, TIM_CR1_CMS_EDGE,
		TIM_CR1_DIR_UP);

	/* Only generate update event on overflow. */
	timer_update_on_overflow(TIM3);

	/* Set the prescaler to have the timer run at the correct frequency. */
	timer_set_prescaler(TIM3, (rcc_apb1_frequency / TIMER_FREQUENCY) - 1);

	/* Count up to 0x7FFF (~32.7ms) before timeout event. */
	timer_set_period(TIM3, 0x7FFF);

	/* Set channel direction and used input. */
	timer_ic_set_input(TIM3, R_IC, TIM_IC_IN_TI3);
	timer_ic_set_input(TIM3, L_IC, TIM_IC_IN_TI4);

	/* Set input capture filter and sampling frequency. */
	timer_ic_set_filter(TIM3, R_IC, TIM_IC_OFF);
	timer_ic_set_filter(TIM3, L_IC, TIM_IC_OFF);

	/* Set input capture polarity to noninverted/both edges. */
	TIM3_CCER |= (TIM_CCER_CC3NP | TIM_CCER_CC3P);
	TIM3_CCER |= (TIM_CCER_CC4NP | TIM_CCER_CC4P);

	/* Enable input capture. */
	timer_ic_enable(TIM3, R_IC);
	timer_ic_enable(TIM3, L_IC);

	/* Enable input capture interrupts. */
	timer_enable_irq(TIM3, TIM_DIER_CC3IE);
	timer_enable_irq(TIM3, TIM_DIER_CC4IE);

	/* Enable update interrupt. */
	timer_enable_irq(TIM3, TIM_DIER_UIE);

	/* Enable counter. */
	timer_enable_counter(TIM3);
}

bool beacon_available(void) {
	return !is_parsed;
}

beacon_t beacon_parse(void) {
	if (is_parsed) {
		return beacon;
	}

	if (sensor == PIN(R_PIN)) {
		beacon.side = BEACON_RIGHT;
	} else if (sensor == PIN(L_PIN)) {
		beacon.side = BEACON_LEFT;
	} else {
		beacon.side = 0;
	}

	uint8_t edges   = received;
	uint8_t longest = 0;
	uint8_t bits    = 0;
	uint16_t length = 0;

	for (uint8_t i = 1; i < edges; i++) {
		if (!(buffer[i] >> 15) && ((buffer[i] & ~(1 << 15)) > (BIT_PERIOD * 3))) {
			longest = i;
			break;
		}
	}

	for (uint8_t i = 0; i < edges; i++) {
		uint16_t pulse = buffer[(longest + i + 1) % edges];
		uint8_t polarity = pulse >> 15;
		pulse &= ~(1 << 15);
		pulse >>= 1;

		/* Round pulse length to the nearest multiple of BIT_PERIOD/2. */
		pulse += (BIT_PERIOD / 4);
		pulse /= (BIT_PERIOD / 2);
		length += pulse;

		if (((i == 0) && ((polarity != 1) || (pulse != 6))) ||
				((i == 1) && ((polarity != 0) || (pulse < 2) || (pulse > 3)))) {
			/* Malformed start bit. */
			break;
		} else if (length % 2) {
			beacon.id = (beacon.id << 1) | polarity;
			bits++;
		}

		if (bits == NUM_BITS) {
			break;
		}
	}

	is_parsed = true;
	return beacon;
}
