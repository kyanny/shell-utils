#!/usr/bin/env bash
# ref: https://unix.stackexchange.com/questions/455215/convert-column-into-row

echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | xargs -n 1
