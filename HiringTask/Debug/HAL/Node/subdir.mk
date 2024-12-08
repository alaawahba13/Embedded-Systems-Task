################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/Node/Node.c 

OBJS += \
./HAL/Node/Node.o 

C_DEPS += \
./HAL/Node/Node.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/Node/%.o HAL/Node/%.su HAL/Node/%.cyclo: ../HAL/Node/%.c HAL/Node/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HAL-2f-Node

clean-HAL-2f-Node:
	-$(RM) ./HAL/Node/Node.cyclo ./HAL/Node/Node.d ./HAL/Node/Node.o ./HAL/Node/Node.su

.PHONY: clean-HAL-2f-Node

