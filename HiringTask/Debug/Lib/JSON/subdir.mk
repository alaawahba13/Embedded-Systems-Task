################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/JSON/JSON_Parser.c \
../Lib/JSON/cJSON.c 

OBJS += \
./Lib/JSON/JSON_Parser.o \
./Lib/JSON/cJSON.o 

C_DEPS += \
./Lib/JSON/JSON_Parser.d \
./Lib/JSON/cJSON.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/JSON/%.o Lib/JSON/%.su Lib/JSON/%.cyclo: ../Lib/JSON/%.c Lib/JSON/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-JSON

clean-Lib-2f-JSON:
	-$(RM) ./Lib/JSON/JSON_Parser.cyclo ./Lib/JSON/JSON_Parser.d ./Lib/JSON/JSON_Parser.o ./Lib/JSON/JSON_Parser.su ./Lib/JSON/cJSON.cyclo ./Lib/JSON/cJSON.d ./Lib/JSON/cJSON.o ./Lib/JSON/cJSON.su

.PHONY: clean-Lib-2f-JSON

