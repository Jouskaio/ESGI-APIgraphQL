import { config } from 'dotenv';
import postgresql from 'pg';

config(); // Charge les variables d'environnement du fichier .env

const { Pool } = postgresql;

const pool = new Pool({
  host: process.env.POSTGRES_HOST,
  port: process.env.POSTGRES_PORT,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_NAME,
});

export default { pool };
