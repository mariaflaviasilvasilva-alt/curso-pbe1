#!/bin/bash

echo "========================================="
echo " TESTE SIMULADO - AULA 17 - BINÁRIO TECH"
echo "========================================="

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3024/api/v1/health)

echo "HTTP Status Code: $HTTP_STATUS" > health_check.log

echo "Resultado salvo em health_check.log:"
cat health_check.log
