#!/bin/bash
#Задание производительности процессора
echo "Выявляем текущую частоту процессоров"
grep MHz /proc/cpuinfo
sleep 1
echo "Устанавливается режим максимального энергопотребления"
ls /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor | xargs -I core bash -c "echo performance > core"
echo "Успешно Выполнено!"
sleep 1
echo "Финальная проверка говернора"
cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
sleep 1
echo 'Завершено! Текущая частота процессоров:'
grep MHz /proc/cpuinfo
