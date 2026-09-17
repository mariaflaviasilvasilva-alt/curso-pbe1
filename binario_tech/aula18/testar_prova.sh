#!/bin/bash

echo "===================================================="
echo " AUDITORIA DE AUTENTICAÇÃO JWT - PROVA - AULA 18"
echo "===================================================="

BASE_URL="http://localhost:3024/api/v1/prova"

EMAIL="aluno_$(date +%s)@exame.com"
SENHA="SenhaSegura123!"

echo -e "\n[1] Registrando novo Usuário ..."
curl -s -X POST "$BASE_URL/register" \
  -H "Content-Type: application/json" \
  -d "{\"email\": \"$EMAIL\", \"senha\": \"$SENHA\"}" | jq .

echo -e "\n[2] Realizando Login e obtendo JWT ..."
LOGIN_RESP=$(curl -s -X POST "$BASE_URL/login" \
  -H "Content-Type: application/json" \
  -d "{\"email\": \"$EMAIL\", \"senha\": \"$SENHA\"}")

echo $LOGIN_RESP | jq .

TOKEN=$(echo $LOGIN_RESP | jq -r '.token')

echo -e "\n[3] Tentando acessar Rota Protegida SEM Token (Esperando HTTP 401)..."
curl -s "$BASE_URL/relatorio" | jq .

echo -e "\n[4] Tentando acessar Rota Protegida COM Token Inválido (Esperando HTTP 403)..."
curl -s "$BASE_URL/relatorio" \
  -H "Authorization: Bearer token_invalido_teste_123" | jq .

echo -e "\n[5] Acessando Rota Protegida COM Token JWT Válido (Esperado HTTP 200)..."
curl -s "$BASE_URL/relatorio" \
  -H "Authorization: Bearer $TOKEN" | jq .
