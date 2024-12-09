#!/bin/sh

# Получение данных о батарее
status=$(acpiconf -i 0 | grep 'State' | awk '{print $2}')
capacity=$(acpiconf -i 0 | grep 'Remaining capacity' | awk '{print $3}' | sed 's/%//')

# Выбор иконки в зависимости от уровня заряда
if [ "$status" = "charging" ]; then
    icon="" # Иконка заряда
elif [ "$capacity" -ge 80 ]; then
    icon=" " # Почти полный
elif [ "$capacity" -ge 60 ]; then
    icon=" " # Средний уровень
elif [ "$capacity" -ge 40 ]; then
    icon=" " # Низкий уровень
elif [ "$capacity" -ge 20 ]; then
    icon=" " # Почти разряжен
else
    icon=" " # Разряжен
fi

# Вывод с иконкой
echo "$icon $capacity%"
