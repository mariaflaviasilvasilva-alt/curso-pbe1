#!/bin/bash
echo "===================================================="
echo " AUDITORIA DE PROCESSOS NODE.JS - $(date)"
echo "===================================================="

ps aux | grep node > processos.log

sleep 2

echo "Resultado salvo em processos.log:"
cat processos.log
