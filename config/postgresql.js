const { config } = require('dotenv');
const { Pool } = require('pg');

config(); // Charge les variables d'environnement du fichier .env

const pool = new Pool({
  host: process.env.POSTGRES_HOST,
  port: process.env.POSTGRES_PORT,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_NAME,
});

module.exports = { pool };