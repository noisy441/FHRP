#!/bin/bash

IP=localhost # ip адрес сервера
PORT=80 # порт веб сервера
HTML_FILE=/var/www/html/index.nginx-debian.html # путь к файлу стартовой страницы nginx

nc -z -w3 "$IP" "$PORT"
PORT_STATUS=$?

if [[ -f $HTML_FILE && $PORT_STATUS -eq 0 ]]; then
    exit 0
else
    exit 1
fi
