################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/FreeRTOS/Source/portable/MemMang/heap_4.c 

OBJS += \
./Lib/FreeRTOS/Source/portable/MemMang/heap_4.o 

C_DEPS += \
./Lib/FreeRTOS/Source/portable/MemMang/heap_4.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/FreeRTOS/Source/portable/MemMang/%.o Lib/FreeRTOS/Source/portable/MemMang/%.su Lib/FreeRTOS/Source/portable/MemMang/%.cyclo: ../Lib/FreeRTOS/Source/portable/MemMang/%.c Lib/FreeRTOS/Source/portable/MemMang/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/MemMang" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/GCC/ARM_CM3" -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang:
	-$(RM) ./Lib/FreeRTOS/Source/portable/MemMang/heap_4.cyclo ./Lib/FreeRTOS/Source/portable/MemMang/heap_4.d ./Lib/FreeRTOS/Source/portable/MemMang/heap_4.o ./Lib/FreeRTOS/Source/portable/MemMang/heap_4.su

.PHONY: clean-Lib-2f-FreeRTOS-2f-Source-2f-portable-2f-MemMang

