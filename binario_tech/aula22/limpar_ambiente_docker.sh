#!/bin/bash

echo "=================================================="
echo "    LIMPANDO AMBIENTE DOCKER - BINÁRIO TECH"
echo "=================================================="

echo "Removendo containers inativos..."
docker container prune -f

echo "Removendo imagens pendentes (dangling)..."
docker image prune -f

echo " Limpeza concluída!"

echo "=================================================="
