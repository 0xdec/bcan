#ifndef BLINK_H
#define BLINK_H

#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>

void blink_setup(void);
void blink(void);
void blink_on(void);
void blink_off(void);

#endif
