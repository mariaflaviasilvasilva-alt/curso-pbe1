require('dotenv').config();
const express = require('express');
const app = express();
const PORT = 8080;

// === EXERCÍCIO 2: Limita o tamanho do payload para 2MB ===
app.use(express.json({ limit: '2mb' }));

// Rota Interna para inspeção do Header de Proxy enviado pelo Nginx
app.get('/api/v1/proxy/info', (req, res) => {
  res.json({
    status: "SUCESSO",
    mensagem: "Requisição processada pelo Express via Nginx Proxy!",
    clientIp: req.headers['x-forwarded-for'] || req.socket.remoteAddress,
    hostHeader: req.headers['host'],
    portaInternaNode: PORT,
    timestamp: new Date()
  });
});

// === AJUSTADO PARA POST: Aceita requisições POST para validar o limite ===
app.post('/status-nginx', (req, res) => {
  res.json({
    status: "OK",
    service: "nginx-proxy"
  });
});

app.listen(PORT, () => {
  console.log(`[Binário Tech] API Interna de Proxy rodando na porta ${PORT}`);
});
