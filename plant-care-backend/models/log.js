const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const Plant = require('./plant');
const Action = require('./action');

const Log = sequelize.define('Log', {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  plantId: { type: DataTypes.INTEGER, allowNull: false, references: { model: Plant, key: 'id' } },
  actionType: { type: DataTypes.INTEGER, allowNull: false, references: { model: Action, key: 'id' } },
  actionTime: { type: DataTypes.DATE, defaultValue: DataTypes.NOW },
});

module.exports = Log;
