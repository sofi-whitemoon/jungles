const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');

const Species = sequelize.define('Species', {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  speciesName: { type: DataTypes.STRING(50), allowNull: false },
  notes: { type: DataTypes.TEXT },
});

module.exports = Species;
