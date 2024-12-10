const express = require('express');
const { createLog, getLogsByPlant } = require('../controllers/logController');
const authMiddleware = require('../middleware/authMiddleware');

const router = express.Router();

router.post('/create', authMiddleware, createLog);
router.get('/plant/:plantId', authMiddleware, getLogsByPlant);

module.exports = router;
