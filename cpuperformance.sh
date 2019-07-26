#!/bin/bash
#Задание производительности процессора
echo "Выявляем текущую частоту процессоров"
grep MHz /proc/cpuinfo
sleep 1
echo "Устанавливается режим максимального энергопотребления"
echo "CPU0 - Performance"
echo "performance" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "CPU1 - Performance"
echo "performance" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo "CPU2 - Performance"
echo "performance" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo "CPU3 - Performance"
echo "performance" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo "Успешно Выполнено!"
sleep 1
echo "Финальная проверка говернора"
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 1
echo 'Завершено! Текущая частота процессоров:'
grep MHz /proc/cpuinfo
