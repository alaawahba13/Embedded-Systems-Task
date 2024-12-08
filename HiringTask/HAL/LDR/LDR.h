/*
 * LDR.h
 *
 *  Created on: 5 Dec 2024
 *      Author: Alaa
 */

#ifndef LDR_LDR_H_
#define LDR_LDR_H_

#include "../../MCAL/ADC/ADC.h"

#define LDR_CHANNEL			ADC_CH3
#define LDR_ADC 			ADC1


void LDR_init(ADC_Registers_t* ADCx);
uint16 LDR_Read(ADC_Registers_t* ADCx,ADC_CHANNEL_t CHx);

#endif /* LDR_LDR_H_ */
