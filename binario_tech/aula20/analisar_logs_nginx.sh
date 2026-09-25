#!/bin/bash

echo "=================================================="
echo "   FILTRANDO ÚLTIMOS LOGS DO NGINX (STATUS 200)   "
echo "=================================================="

# Lê as últimas 15 linhas e filtra pelo status 200
tail -n 15 /var/log/nginx/access.log | grep " 200 "

echo "=================================================="

