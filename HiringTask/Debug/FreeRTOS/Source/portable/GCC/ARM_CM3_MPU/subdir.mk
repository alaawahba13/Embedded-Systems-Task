################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.c \
../FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.c 

OBJS += \
./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.o \
./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.o 

C_DEPS += \
./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.d \
./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/%.o FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/%.su FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/%.cyclo: ../FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/%.c FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3_MPU" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/FreeRTOS/Source/portable/GCC/ARM_CM3" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3_MPU

clean-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3_MPU:
	-$(RM) ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.cyclo ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.d ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.o ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/mpu_wrappers_v2_asm.su ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.cyclo ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.d ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.o ./FreeRTOS/Source/portable/GCC/ARM_CM3_MPU/port.su

.PHONY: clean-FreeRTOS-2f-Source-2f-portable-2f-GCC-2f-ARM_CM3_MPU

