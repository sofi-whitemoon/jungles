const express = require('express');
const sequelize = require('./config/database');
require('dotenv').config();

const authRoutes = require('./routes/authRoutes');
const plantRoutes = require('./routes/plantRoutes');
const logRoutes = require('./routes/logRoutes');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());

// Test DB connection
sequelize.authenticate()
  .then(() => console.log('Database connected.'))
  .catch((error) => console.error('Database connection failed:', error));

// Routes
app.use('/auth', authRoutes);
app.use('/plants', plantRoutes);
app.use('/logs', logRoutes);


// Start server
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
