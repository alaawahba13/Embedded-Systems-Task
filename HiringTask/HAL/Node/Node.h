/*
 * Node.h
 *
 *  Created on: Dec 6, 2024
 *      Author: Alaa
 */

#ifndef NODE_NODE_H_
#define NODE_NODE_H_


#include "../LM35/LM35.h"
#include "../LDR/LDR.h"
#include "../RelayModule/Relay.h"
#include "../../Lib/JSON/JSON_Parser.h"
#include "../MCAL/USART/USART.h"
#include "../MCAL/SYSTICK/SYSTICK.h"

#define tempID 		0x80
#define ldrID		0x81
#define relayID		0x50


typedef struct{
	uint8 status;
	uint32 nodeID;
	uint32 duration;
}node_t;

void enableNode(node_t *node);
void disableNode(node_t *node);

void actOnNode(node_t *node, uint8 value);
void getNodeStatus(node_t *node);

void setNodeDuration(node_t *node, uint32 duration);
void getNodeReading(node_t *node);

#endif /* NODE_NODE_H_ */
