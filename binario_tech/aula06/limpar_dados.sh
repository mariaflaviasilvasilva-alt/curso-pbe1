#!/bin/bash

echo "=================================================="
echo " LIMPEZA DO AMBIENTE DE TESTES - BINÁRIO TECH     "
echo "=================================================="

echo -e "\n[1] Encerrando processo Node.js (ocorrencias_api.js)..."
PID=$(ps aux | grep '[o]correncias_api.js' | awk '{print $2}')

if [ -n "$PID" ]; then
    kill -9 $PID
    echo "Processo $PID encerrado."
else
    echo "Nenhum processo Node.js rodando."
fi

echo -e "\n[2] Removendo arquivo ocorrencias.json..."
if [ -f "ocorrencias.json" ]; then
    rm ocorrencias.json
    echo "Arquivo ocorrencias.json removido."
else
    echo "Arquivo ocorrencias.json não encontrado."
fi

echo -e "\nAmbiente resetado com sucesso!"
