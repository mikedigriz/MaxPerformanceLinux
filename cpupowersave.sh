#!/bin/bash
#Управление режимом производительности
echo "Выявляем текущую частоту процессоров"
grep MHz /proc/cpuinfo
sleep 1
echo "Устанавливается режим максимального энергосбережения"
echo "CPU0 - Powersave"
echo "powersave" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
sleep 1
echo "CPU1 - Powersave"
echo "powersave" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
sleep 1
echo "CPU2 - Powersave"
echo "powersave" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
sleep 1
echo "CPU3 - Powersave"
echo "powersave" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor
echo "powersave" > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
sleep 1
echo "Успешно Выполнено!"
sleep 1
echo "Финальная проверка говернора"
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 1
echo 'Завершено! Текущая частота процессоров:'
grep MHz /proc/cpuinfo
