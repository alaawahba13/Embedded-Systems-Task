/*
 * LDR.c
 *
 *  Created on: 5 Dec 2024
 *      Author: Alaa
 */

#include "LDR.h"


void LDR_init(ADC_Registers_t* ADCx){
	ADC_init(ADC1);
}

uint16 LDR_Read(ADC_Registers_t* ADCx,ADC_CHANNEL_t CHx){
	return	ADC_read(ADCx,CHx);

}
