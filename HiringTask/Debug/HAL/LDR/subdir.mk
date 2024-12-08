################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/LDR/LDR.c 

OBJS += \
./HAL/LDR/LDR.o 

C_DEPS += \
./HAL/LDR/LDR.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/LDR/%.o HAL/LDR/%.su HAL/LDR/%.cyclo: ../HAL/LDR/%.c HAL/LDR/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HAL-2f-LDR

clean-HAL-2f-LDR:
	-$(RM) ./HAL/LDR/LDR.cyclo ./HAL/LDR/LDR.d ./HAL/LDR/LDR.o ./HAL/LDR/LDR.su

.PHONY: clean-HAL-2f-LDR

