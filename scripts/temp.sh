#!/bin/sh

# Получаем температуру через sysctl
temp=$(sysctl -n hw.acpi.thermal.tz0.temperature)

# Выводим результат с иконкой градусника
echo " $temp"
