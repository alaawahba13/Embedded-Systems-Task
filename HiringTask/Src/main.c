/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Alaa Wahba
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
#include "main.h"

int main(void) {
	RCC_init(RCC_HSE, HSE_CRYSTAL, 0, 0);
	RCC_CLK_EN(APB2_ID, GPIOA_ID);
	RCC_CLK_EN(APB2_ID, USART1_ID);

	USART_pinConfig_t USART_pinConfig;
	USART_pinConfig.BaudRate = USART_BaudRate_9600;
	USART_pinConfig.Parity = USART_Parity_None;
	USART_pinConfig.DataLength = USART_DataLength8;
	USART_pinConfig.StopBits = USART_StopBits_1;
	USART_pinConfig.FlowControl = USART_FlowControl_NONE;
	USART_pinConfig.USART_Mode = USART_TXRXEN;
	USART_pinConfig.P_CallBack_Fun = NULL;
	USART_pinConfig.IRQ_Enable = USART_NONE;

	USART_init(&USART_pinConfig, USART1);
	USART_SetPins(USART1);

	node_t node = { .status = 0 };
	uint8 received_json[50];
	lcd_init();
	LM35_init(ADC1);
	STK_init();

	LDR_init(ADC1);
	uint16 val;
	while (1) {

//		val = LM35_Read(ADC1, ADC_CH1);
////		val = LDR_Read(ADC1, ADC_CH3);
//		lcd_display_number(val);
//		lcd_send_String("  ");
//		STK_delayMs(5000);

//		USART_ReceiveString(USART1, (uint8 *)received_json);
//		Parsed_JSON_t parsedMessage = JSON_parseString((uint8 *)received_json);
//		node.nodeID = parsedMessage.nodeID;
//
//		if (!strcmp((char*) parsedMessage.command, "ENA")) {
//			enableNode(&node);
//		} else if (!strcmp((char*) parsedMessage.command, "ACT")) {
//			actOnNode(&node, (uint8)(parsedMessage.data[0]- '0'));
//		} else if (!strcmp((char*) parsedMessage.command, "STA")) {
//			getNodeStatus(&node);
//		}else if (!strcmp((char*) parsedMessage.command, "DUR")) {
//			uint32 data;
//			sprintf(parsedMessage.data, "%d", data);
//			setNodeDuration(&node, data);
//			getNodeReading(&node); //???
//		}else if (!strcmp((char*) parsedMessage.command, "DIS")) {
//			disableNode(&node);
//		}

	}

}

