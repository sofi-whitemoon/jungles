const express = require('express');
const { createPlant,  getUserPlants} = require('../controllers/plantController');
const authMiddleware = require('../middleware/authMiddleware');

const router = express.Router();

router.post('/create', authMiddleware, createPlant);
router.get('/user', authMiddleware, getUserPlants); // New route for fetching user plants


module.exports = router;
