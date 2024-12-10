const Log = require('../models/log');

exports.createLog = async (req, res) => {
  try {
    const { plantId, actionType } = req.body;
    const log = await Log.create({ plantId, actionType });
    res.status(201).json(log);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
};

exports.getLogsByPlant = async (req, res) => {
  try {
    const { plantId } = req.params;
    const logs = await Log.findAll({ where: { plantId } });
    res.status(200).json(logs);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
};
