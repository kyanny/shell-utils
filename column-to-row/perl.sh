#!/usr/bin/env bash

echo "  UID   PID  PPID   C STIME   TTY           TIME CMD" | perl -anle 'print join "\n", @F'
