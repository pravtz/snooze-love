#!/bin/bash

PROCESS_NAME="snooze_love.exe"

if tasklist /FI "IMAGENAME eq $PROCESS_NAME" 2>NUL | find /I "$PROCESS_NAME" >NUL
then
    echo "$PROCESS_NAME está em execução ou suspenso."
else
    echo "$PROCESS_NAME não está em execução."
fi