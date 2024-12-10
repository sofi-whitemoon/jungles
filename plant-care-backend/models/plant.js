const { DataTypes } = require('sequelize');
const sequelize = require('../config/database');
const User = require('./user');

const Plant = sequelize.define('Plant', {
  id: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  userId: { type: DataTypes.INTEGER, allowNull: false, references: { model: User, key: 'id' } },
  name: { type: DataTypes.STRING(100), allowNull: false },
  speciesId: { type: DataTypes.INTEGER },
  waterFrequency: { type: DataTypes.INTEGER, allowNull: false },
  fertilizeFrequency: { type: DataTypes.INTEGER },
  notes: { type: DataTypes.TEXT },
});

User.hasMany(Plant, { foreignKey: 'userId' });
Plant.belongsTo(User, { foreignKey: 'userId' });

module.exports = Plant;
