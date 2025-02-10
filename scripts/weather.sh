#!/bin/sh

wget -q -O /home/dima/Prog/distfiles/scripts/1.html https://www.gismeteo.by/weather-minsk-4248/
FILE_PATH="/home/dima/Prog/distfiles/scripts/1.html"

# Поиск строки с "temperatureAir" и извлечение значения
TEMPERATURE=$(grep -oE '"temperatureAir":\[-?[0-9]+\]' "$FILE_PATH" | cut -d '[' -f2 | tr -d ']')
TEMPERATUREHEAT=$(grep -oE '"temperatureHeatIndex":\[-?[0-9]+\]' "$FILE_PATH" | cut -d '[' -f2 | tr -d ']')

# Проверка, найдено ли значение
if [ -n "$TEMPERATURE" ]; then
    echo "󰖐  $TEMPERATURE/$TEMPERATUREHEAT"

else
    echo "Значение temperatureAir не найдено."
fi
