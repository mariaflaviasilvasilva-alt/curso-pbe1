#!/bin/bash
echo "====================================================" > auditoria.log
echo " AUDITORIA COMPLETA - BINÁRIO TECH" >> auditoria.log
echo " Data: $(date)" >> auditoria.log
echo "====================================================" >> auditoria.log

echo -e "\n[1] Consultando Telemetria Scania..." >> auditoria.log
curl -s http://localhost:3000/api/v1/telemetria/scania | jq . >> auditoria.log

echo -e "\n[2] Enviando Dado de Telemetria com Alerta de Temperatura (Scania)..." >> auditoria.log
curl -s -X POST http://localhost:3000/api/v1/telemetria/scania \
  -H "Content-Type: application/json" \
  -d '{"modelo":"R540","vin":"9BS555444333","temperatura_motor":99}' | jq . >> auditoria.log

echo -e "\n[3] Consultando Telemetria Mercedes-Benz..." >> auditoria.log
curl -s http://localhost:3000/api/v1/telemetria/mercedes | jq . >> auditoria.log

echo -e "\n[4] Testando Endpoint Inexistente (Volvo)..." >> auditoria.log
curl -s http://localhost:3000/api/v1/telemetria/volvo | jq . >> auditoria.log

echo -e "\nAuditoria concluída." >> auditoria.log

echo "Auditoria concluída. Resultados salvos em auditoria.log"
