#!/bin/sh
df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}'
