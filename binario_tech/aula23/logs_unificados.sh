#!/bin/bash

echo "=============================================="
echo "    MONITORAMENTO EM TEMPO REAL - AULA 23"
echo "=============================================="
echo "Pressione Ctrl+C para encerrar o monitoramento."
echo "=============================================="

# Executa o acompanhamento dos logs unificados
docker compose logs -f --tail=20

