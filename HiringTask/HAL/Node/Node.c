/*
 * Node.c
 *
 *  Created on: Dec 6, 2024
 *      Author: Alaa
 */

#include "Node.h"

uint8 buffer[5];

void enableNode(node_t *node) {
	uint8 command[3];
	if (node->nodeID == tempID) {
		LM35_init(ADC1);
		strcpy(command, "NS");
	} else if (node->nodeID == relayID) {
		GPIO_PinConfig_t pinConfig;
		pinConfig.MODE = MODE_OUTPUT_PP;
		pinConfig.Pin_Number = Relay_PIN;
		pinConfig.Output_Speed = SPEED_10M;
		GPIO_init(Relay_GPIO, &pinConfig);
		strcpy(command, "NA");
	} else if (node->nodeID == ldrID) {
		LDR_init(LDR_ADC);
		strcpy(command, "NS");
	}
	sprintf((char*) buffer, "0x%x", node->nodeID);
	uint8 *message = JSON_createString(command, buffer, (uint8*) "DONE");
	USART_SendString(USART1, message);

}
void disableNode(node_t *node) {
	if (node->nodeID == tempID) {

	} else if (node->nodeID == relayID) {

	} else if (node->nodeID == ldrID) {

	}
}
void actOnNode(node_t *node, uint8 value) {
	if (node->nodeID == relayID) {
		Relay_setPin(Relay_GPIO, Relay_PIN, value);
		node->status = value;
	}
}
void getNodeStatus(node_t *node) {
	if (node->nodeID == relayID) {
		sprintf((char*) buffer, "0x%x", node->nodeID);
		uint8 *message = JSON_createString((uint8*) "NA", buffer,
				&node->status);
		USART_SendString(USART1, message);
	}

}
void setNodeDuration(node_t *node, uint32 duration) {
	node->duration = duration;
}
void getNodeReading(node_t *node) {
	uint8 value;
	if (node->nodeID == tempID) {
		value = LM35_Read(LM35_ADC, LM35_CHANNEL);
	} else if (node->nodeID == ldrID) {
		value = LDR_Read(LDR_ADC, LDR_CHANNEL);
	}
	sprintf((char*) buffer, "0x%x", node->nodeID);
	uint8 *message = JSON_createString((uint8*) "NS", buffer, &value);
	USART_SendString(USART1, message);

}
