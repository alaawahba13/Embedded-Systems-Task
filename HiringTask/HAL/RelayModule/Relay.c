/*
 * Relay.c
 *
 *  Created on: Dec 5, 2024
 *      Author: Alaa
 */


#include "Relay.h"


void Relay_init(GPIO_Registers_t* GPIOx , GPIO_PinConfig_t* pinConfig){
	GPIO_init(GPIOx, pinConfig);
}



void Relay_setPin(GPIO_Registers_t* GPIOx , uint16 pinNumber, uint8 value){
	GPIO_WritePin(GPIOx, pinNumber, value);

}



