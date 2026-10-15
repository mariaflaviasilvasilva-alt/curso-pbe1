#!/bin/bash

# teste_crud.sh - Automatiza um fluxo de teste CRUD na API de Frotas
BASE_URL="http://localhost:3000/api/v1/veiculos"
LOG_FILE="crud_result.log"

# Limpa o log anterior e inicia um novo registro
echo "===== Teste CRUD - $(date) =====" > "$LOG_FILE"

log() {
    echo -e "\n--- $1 ---" | tee -a "$LOG_FILE"
}

# 1. Cadastrar primeiro veiculo
log "Cadastrando veiculo 1 (Iveco Tector)"
RESP1=$(curl -s -w "\nHTTP_STATUS:%{http_code}" -X POST "$BASE_URL" \
    -H "Content-Type: application/json" \
    -d '{"placa": "IVC-1001", "montadora": "Iveco", "modelo": "Tector"}')
echo "$RESP1" | tee -a "$LOG_FILE"

# Extrai o ID do veiculo recem-criado usando jq
ID1=$(echo "$RESP1" | sed -n '1p' | jq -r '.id')

# 2. Cadastrar segundo veiculo
log "Cadastrando veiculo 2 (DAF XF)"
RESP2=$(curl -s -w "\nHTTP_STATUS:%{http_code}" -X POST "$BASE_URL" \
    -H "Content-Type: application/json" \
    -d '{"placa": "DAF-2002", "montadora": "DAF", "modelo": "XF"}')
echo "$RESP2" | tee -a "$LOG_FILE"

ID2=$(echo "$RESP2" | sed -n '1p' | jq -r '.id')

# 3. Atualizar o status do primeiro veiculo (PATCH)
log "Atualizando status do veiculo ID $ID1 para EM_ROTA"
curl -s -w "\nHTTP_STATUS:%{http_code}\n" -X PATCH "$BASE_URL/$ID1/status" \
    -H "Content-Type: application/json" \
    -d '{"status": "EM_ROTA"}' | tee -a "$LOG_FILE"

# 4. Deletar o segundo veiculo
log "Deletando veiculo ID $ID2"
curl -s -w "\nHTTP_STATUS:%{http_code}\n" -X DELETE "$BASE_URL/$ID2" | tee -a "$LOG_FILE"

log "Teste finalizado"
echo "Log completo salvo em $LOG_FILE"
