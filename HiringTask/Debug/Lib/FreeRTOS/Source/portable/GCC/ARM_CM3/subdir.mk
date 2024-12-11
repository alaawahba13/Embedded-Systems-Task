################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.c 

OBJS += \
./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.o 

C_DEPS += \
./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/%.o Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/%.su Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/%.cyclo: ../Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/%.c Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/MemMang" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/GCC/ARM_CM3" -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3

clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3:
	-$(RM) ./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.cyclo ./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.d ./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.o ./Lib/FreeRTOS/Source/portable/GCC/ARM_CM3/port.su

.PHONY: clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3

