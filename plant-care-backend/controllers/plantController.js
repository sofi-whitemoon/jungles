const Plant = require('../models/plant');

exports.createPlant = async (req, res) => {
  try {
    const { name, speciesId, waterFrequency, fertilizeFrequency, notes } = req.body;
    const plant = await Plant.create({ ...req.body, userId: req.user.id });
    res.status(201).json(plant);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
};

exports.getUserPlants = async (req, res) => {
  try {
    const userId = req.user.id; // Extract user ID from the authenticated user
    const plants = await Plant.findAll({ where: { userId } });

    if (!plants.length) {
      return res.status(404).json({ message: 'No plants found for this user.' });
    }

    res.status(200).json(plants);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};