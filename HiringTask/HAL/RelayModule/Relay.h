/*
 * Relay.h
 *
 *  Created on: Dec 5, 2024
 *      Author: Alaa
 */

#ifndef RELAYMODULE_RELAY_H_
#define RELAYMODULE_RELAY_H_

#include "../../MCAL/GPIO/GPIO.h"

#define Relay_GPIO 		GPIOA
#define Relay_PIN		PIN_3

void Relay_init(GPIO_Registers_t* GPIOx , GPIO_PinConfig_t* pinConfig);
void Relay_setPin(GPIO_Registers_t* GPIOx , uint16 pinNumber,uint8 vaue);


#endif /* RELAYMODULE_RELAY_H_ */
