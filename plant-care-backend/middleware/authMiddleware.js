const jwt = require('jsonwebtoken');
const User = require('../models/user');

const authMiddleware = async (req, res, next) => {
  try {
    const token = req.headers.authorization?.split(' ')[1]; // Bearer <token>
    if (!token) throw new Error('No token provided');

    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    const user = await User.findByPk(decoded.id);
    if (!user) throw new Error('User not found');

    req.user = user; // Зберігаємо користувача для подальшого використання
    next();
  } catch (error) {
    res.status(401).json({ error: 'Unauthorized: ' + error.message });
  }
};

module.exports = authMiddleware;
