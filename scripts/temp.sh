#!/bin/sh

# Проверка температуры первого ядра
# ! Проверить загружен ли модуль ядра coretemp (kldload coretemp)
if sysctl dev.cpu.0.temperature >/dev/null 2>&1; then
    # Получение температуры
    temperature=$(sysctl -n dev.cpu.0.temperature | sed 's/C$//')

    temperature=${temperature%.*}

    # Выбор иконки в зависимости от температуры
    if [ "$temperature" -lt 50 ]; then
        icon="" # Низкая температура
    elif [ "$temperature" -lt 70 ]; then
        icon="" # Умеренная температура
    elif [ "$temperature" -lt 85 ]; then
        icon="" # Высокая температура
    else
        icon="" # Критическая температура
    fi

    echo "$icon $temperature°C"
else
    echo " N/A"
fi
