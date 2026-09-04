const express = require('express');
const router = express.Router();

let manutencoes = [
   { id: 1, caminhao: "Scania R450", tipo: "Troca de oleo", valor: 850.00, data: "2026-06-10" },
   { id: 2, caminhao: "Volvo FH540", tipo: "Revisao de freios", valor: 1200.50, data: "2026-07-02" }
];

// GET /api/v1/manutencoes
router.get('/', (req, res) => {
    res.status(200).json(manutencoes);
    });

// POST /api/v1/manutencoes
router.post('/', (req, res) => {
    const { caminhao, tipo, valor, data } = req.body;

    if (!caminhao || !tipo || !valor || !data) {
        return res.status(400).json({ erro: "Campos 'caminhao', 'tipo', 'valor' e 'data' sao obrigatorios." });
    }

    const novaManutencao = {
        id: manutencoes.length + 1,
        caminhao,
        tipo,
        valor,
        data
    };

    manutencoes.push(novaManutencao);
    res.status(201).json(novaManutencao);
});

module.exports = router;
