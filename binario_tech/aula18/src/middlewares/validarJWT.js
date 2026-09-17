const jwt = require('jsonwebtoken');

const validarJWT = (req, res, next) => {
  const authHeader = req.headers['authorization'];
  
  if (!authHeader) {
    return res.status(401).json({ mensagem: "Token de acesso não fornecido." });
  }

  const token = authHeader.startsWith('Bearer ') ? authHeader.split(' ')[1] : authHeader;

  jwt.verify(token, process.env.JWT_SECRET, (err, decoded) => {
    if (err) {
      return res.status(403).json({ mensagem: "Token inválido ou expirado." });
    }

    req.usuario = decoded;
    next();
  });
};

module.exports = validarJWT;
