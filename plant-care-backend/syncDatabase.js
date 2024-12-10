const sequelize = require('./config/database');
const User = require('./models/user');
const Plant = require('./models/plant');
const Log = require('./models/log');
const Action = require('./models/action');
const Species = require('./models/species');

const syncDatabase = async () => {
  try {
    await sequelize.sync({ force: true }); // `force: true` перезаписує всі таблиці
    console.log('All models were synchronized successfully.');

    // Заповнення таблиці дій (приклад)
    await Action.bulkCreate([
      { actionName: 'Watered' },
      { actionName: 'Fertilized' },
    ]);

    console.log('Sample data inserted.');
  } catch (error) {
    console.error('Error synchronizing the database:', error);
  } finally {
    await sequelize.close();
  }
};

syncDatabase();
