#!/bin/bash

LOG_FILE="audit_seguranca.log"
URL="http://localhost:3000/api/v1/motoristas"
API_KEY_VALIDA="binario-tech-secret-2026"

echo "=== Teste de Seguranca - $(date) ===" > "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 1 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 2 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 3 (SEM API Key) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "--- Tentativa 4 (COM API Key valida) ---" >> "$LOG_FILE"
curl -s -w "\nStatus HTTP: %{http_code}\n" -H "X-API-KEY: $API_KEY_VALIDA" "$URL" >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
echo "=== Fim do teste ===" >> "$LOG_FILE"

echo "Teste concluido! Resultados salvos em $LOG_FILE"
