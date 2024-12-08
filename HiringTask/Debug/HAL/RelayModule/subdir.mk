################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/RelayModule/Relay.c 

OBJS += \
./HAL/RelayModule/Relay.o 

C_DEPS += \
./HAL/RelayModule/Relay.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/RelayModule/%.o HAL/RelayModule/%.su HAL/RelayModule/%.cyclo: ../HAL/RelayModule/%.c HAL/RelayModule/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HAL-2f-RelayModule

clean-HAL-2f-RelayModule:
	-$(RM) ./HAL/RelayModule/Relay.cyclo ./HAL/RelayModule/Relay.d ./HAL/RelayModule/Relay.o ./HAL/RelayModule/Relay.su

.PHONY: clean-HAL-2f-RelayModule

