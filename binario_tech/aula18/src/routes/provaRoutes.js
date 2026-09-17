const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');
const validarJWT = require('../middlewares/validarJWT');

// Rotas públicas
router.post('/register', authController.register);
router.post('/login', authController.login);

// Rota privada 
router.get('/relatorio', validarJWT, authController.relatorio);

module.exports = router;
