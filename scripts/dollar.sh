#!/bin/sh

exec /home/dima/Prog/dotfiles/scripts/money.sh | awk '{print $1 "/" $2}'
