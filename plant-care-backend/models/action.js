const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Action = sequelize.define('Action', {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  actionName: { type: DataTypes.STRING(50), allowNull: false },
});

module.exports = Action;
