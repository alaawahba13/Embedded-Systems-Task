/*
 * JSON_Parser.c
 *
 *  Created on: Dec 6, 2024
 *      Author: Alaa
 */

#include "JSON_Parser.h"
Parsed_JSON_t JSON_parseString(uint8 *message) {
	cJSON *json_message = cJSON_Parse(message);
	Parsed_JSON_t parsed_message={0};

	if (json_message == NULL) {
		return parsed_message;
	}

	cJSON *command = cJSON_GetObjectItem(json_message, "command");
	if (cJSON_IsString(command)) {
		strncpy(parsed_message.command, command->valuestring,
				sizeof(parsed_message.command) - 1);
	}

	cJSON *nodeID = cJSON_GetObjectItem(json_message, "nodeID");
	if (cJSON_IsString(nodeID)) {
		parsed_message.nodeID = (int) strtol(nodeID->valuestring, NULL, 16);
	}

	cJSON *data = cJSON_GetObjectItem(json_message, "data");
	if (cJSON_IsString(data)) {
		strncpy(parsed_message.data, data->valuestring,
				sizeof(parsed_message.data) - 1);
	}

	cJSON_Delete(json_message);
	return parsed_message;

}
uint8* JSON_createString(uint8 *command, uint8 *nodeID, uint8 *data) {

	cJSON *json_message = cJSON_CreateObject();
	cJSON_AddStringToObject(json_message, "command", command);
	cJSON_AddStringToObject(json_message, "nodeID", nodeID);
	cJSON_AddStringToObject(json_message, "data", data);

	uint8 *ret_String = cJSON_PrintUnformatted(json_message);

	cJSON_Delete(json_message);
	return ret_String;

}
