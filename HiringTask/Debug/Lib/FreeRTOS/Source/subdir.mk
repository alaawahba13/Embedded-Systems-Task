################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/FreeRTOS/Source/croutine.c \
../Lib/FreeRTOS/Source/event_groups.c \
../Lib/FreeRTOS/Source/list.c \
../Lib/FreeRTOS/Source/queue.c \
../Lib/FreeRTOS/Source/stream_buffer.c \
../Lib/FreeRTOS/Source/tasks.c \
../Lib/FreeRTOS/Source/timers.c 

OBJS += \
./Lib/FreeRTOS/Source/croutine.o \
./Lib/FreeRTOS/Source/event_groups.o \
./Lib/FreeRTOS/Source/list.o \
./Lib/FreeRTOS/Source/queue.o \
./Lib/FreeRTOS/Source/stream_buffer.o \
./Lib/FreeRTOS/Source/tasks.o \
./Lib/FreeRTOS/Source/timers.o 

C_DEPS += \
./Lib/FreeRTOS/Source/croutine.d \
./Lib/FreeRTOS/Source/event_groups.d \
./Lib/FreeRTOS/Source/list.d \
./Lib/FreeRTOS/Source/queue.d \
./Lib/FreeRTOS/Source/stream_buffer.d \
./Lib/FreeRTOS/Source/tasks.d \
./Lib/FreeRTOS/Source/timers.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/FreeRTOS/Source/%.o Lib/FreeRTOS/Source/%.su Lib/FreeRTOS/Source/%.cyclo: ../Lib/FreeRTOS/Source/%.c Lib/FreeRTOS/Source/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/include" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/MemMang" -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Lib/FreeRTOS/Source/portable/GCC/ARM_CM3" -I../Inc -I"C:/Users/Qebaa/Documents/STM32CubeIDE/Embedded-Systems-Task/HiringTask/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-FreeRTOS-2f-Source

clean-Lib-2f-FreeRTOS-2f-Source:
	-$(RM) ./Lib/FreeRTOS/Source/croutine.cyclo ./Lib/FreeRTOS/Source/croutine.d ./Lib/FreeRTOS/Source/croutine.o ./Lib/FreeRTOS/Source/croutine.su ./Lib/FreeRTOS/Source/event_groups.cyclo ./Lib/FreeRTOS/Source/event_groups.d ./Lib/FreeRTOS/Source/event_groups.o ./Lib/FreeRTOS/Source/event_groups.su ./Lib/FreeRTOS/Source/list.cyclo ./Lib/FreeRTOS/Source/list.d ./Lib/FreeRTOS/Source/list.o ./Lib/FreeRTOS/Source/list.su ./Lib/FreeRTOS/Source/queue.cyclo ./Lib/FreeRTOS/Source/queue.d ./Lib/FreeRTOS/Source/queue.o ./Lib/FreeRTOS/Source/queue.su ./Lib/FreeRTOS/Source/stream_buffer.cyclo ./Lib/FreeRTOS/Source/stream_buffer.d ./Lib/FreeRTOS/Source/stream_buffer.o ./Lib/FreeRTOS/Source/stream_buffer.su ./Lib/FreeRTOS/Source/tasks.cyclo ./Lib/FreeRTOS/Source/tasks.d ./Lib/FreeRTOS/Source/tasks.o ./Lib/FreeRTOS/Source/tasks.su ./Lib/FreeRTOS/Source/timers.cyclo ./Lib/FreeRTOS/Source/timers.d ./Lib/FreeRTOS/Source/timers.o ./Lib/FreeRTOS/Source/timers.su

.PHONY: clean-Lib-2f-FreeRTOS-2f-Source

