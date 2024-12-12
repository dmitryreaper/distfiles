#!/bin/sh

# Получаем строку с информацией о памяти из `top`
active_memory=$(top -b -n 1 | awk '/Mem:/ {print $2}')

echo ": $active_memory"
