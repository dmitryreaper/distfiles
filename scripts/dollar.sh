#!/bin/sh

exec /home/dima/Prog/distfiles/scripts/money.sh | awk '{print $1 "/" $2}'
