const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const Usuario = require('../models/Usuario');

const authController = {
  // Endpoint de Registro - Questão 1
    register: async (req, res) => {
    try {
      const { email, senha } = req.body;

      if (!email || !senha) {
        return res.status(400).json({ mensagem: "Email e senha são obrigatórios." });
      }

      if (senha.length < 6) {
        return res.status(400).json({ mensagem: "A senha deve ter no mínimo 6 caracteres." });
      }

      const usuarioExiste = await Usuario.findOne({ email });
      if (usuarioExiste) {
        return res.status(400).json({ mensagem: "E-mail já cadastrado." });
      }

      // Hash da senha com bcryptjs
      const senhaHash = await bcrypt.hash(senha, 10);

      const novoUsuario = await Usuario.create({
        email,
        senha: senhaHash
      });

      res.status(201).json({
        mensagem: "Usuário cadastrado com sucesso!",
        id: novoUsuario._id
      });
    } catch (erro) {
      res.status(500).json({ mensagem: "Erro interno no servidor.", erro: erro.message });
    }
  },

  // Endpoint de Login - Questão 2
    login: async (req, res) => {
    try {
      const { email, senha } = req.body;

      if (!email || !senha) {
        return res.status(400).json({ mensagem: "Email e senha são obrigatórios." });
      }

      const usuario = await Usuario.findOne({ email });
      if (!usuario) {
        return res.status(401).json({ mensagem: "Credenciais inválidas." });
      }

      const senhaValida = await bcrypt.compare(senha, usuario.senha);
      if (!senhaValida) {
        return res.status(401).json({ mensagem: "Credenciais inválidas." });
      }

   // 30 minutos de espera
           const token = jwt.sign(
        { id: usuario._id, email: usuario.email },
        process.env.JWT_SECRET,
        { expiresIn: '30m' }
      );

      res.status(200).json({ token });
    } catch (erro) {
      res.status(500).json({ mensagem: "Erro interno no servidor.", erro: erro.message });
    }
  },

  // Rota Protegida de Relatório - Questão 3
  relatorio: (req, res) => {
    res.status(200).json({
      status: "SUCESSO",
      mensagem: "Relatório da prova liberado!",
      usuario: req.usuario
    });
  }
};

module.exports = authController;
