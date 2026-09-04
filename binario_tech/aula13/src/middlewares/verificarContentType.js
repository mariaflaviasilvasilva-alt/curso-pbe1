const verificarContentType = (req, res, next) => {
  if (req.method === 'POST' && req.headers['content-type'] !== 'application/json') {
    return res.status(400).json({
      status: "CONTENT_TYPE_INVALIDO",
      mensagem: "O cabeçalho Content-Type deve ser 'application/json' para requisições POST."
    });
  }
  next();
};

module.exports = verificarContentType;
