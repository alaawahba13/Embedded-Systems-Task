################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/EXTI/EXTI.c 

OBJS += \
./MCAL/EXTI/EXTI.o 

C_DEPS += \
./MCAL/EXTI/EXTI.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/EXTI/%.o MCAL/EXTI/%.su MCAL/EXTI/%.cyclo: ../MCAL/EXTI/%.c MCAL/EXTI/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MCAL-2f-EXTI

clean-MCAL-2f-EXTI:
	-$(RM) ./MCAL/EXTI/EXTI.cyclo ./MCAL/EXTI/EXTI.d ./MCAL/EXTI/EXTI.o ./MCAL/EXTI/EXTI.su

.PHONY: clean-MCAL-2f-EXTI

