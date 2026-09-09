const autorizarPerfil = (perfisPermitidos) => {
  return (req, res, next) => {
    // req.usuario já foi preenchido pelo autenticarToken (deve rodar ANTES deste)
    const { perfil } = req.usuario;

    if (!perfisPermitidos.includes(perfil)) {
      return res.status(403).json({
        status: "ERRO",
        mensagem: "Acesso negado. Você não tem permissão para acessar este recurso."
      });
    }

    next();
  };
};

module.exports = autorizarPerfil;
