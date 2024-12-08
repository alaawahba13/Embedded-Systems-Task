/*
 * JSON_Parser.h
 *
 *  Created on: Dec 6, 2024
 *      Author: Alaa
 */

#ifndef JSON_JSON_PARSER_H_
#define JSON_JSON_PARSER_H_

#include "cJSON.h"
#include "../MCAL/Lib/Platform_types.h"

typedef struct {
	uint8 command[16];
	uint32 nodeID;
	uint8 data[16];

} Parsed_JSON_t;

Parsed_JSON_t JSON_parseString(uint8 *message);
uint8* JSON_createString(uint8 *command, uint8 *nodeID, uint8 *data);
#endif /* JSON_JSON_PARSER_H_ */
