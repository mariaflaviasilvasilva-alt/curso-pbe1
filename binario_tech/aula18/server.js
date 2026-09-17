require('dotenv').config();
const express = require('express');
const cors = require('cors');
const conectarBanco = require('./src/config/database');
const provaRoutes = require('./src/routes/provaRoutes');

const app = express();
const PORT = process.env.PORT || 3024;

app.use(cors());
app.use(express.json());

// Rota Pública de Healthcheck
app.get('/api/v1/health', (req, res) => {
  res.json({ status: "PRONTO_PARA_EXAME", timestamp: new Date() });
});

// Associa o roteador com o prefixo da prova
app.use('/api/v1/prova', provaRoutes);

conectarBanco().then(() => {
  app.listen(PORT, () => {
    console.log(`[Binário Tech] Servidor do Exame da Aula 18 ativo na porta ${PORT}`);
  });
});
