import { } from 'dotenv/config';
import postgresql from 'pg';

const { Pool } = postgresql;
const env = process.env

const pool = new Pool({
  host: env.POSTGRES_HOST,
  port: env.POSTGRES_PORT,
  user: env.POSTGRES_USER,
  password: env.POSTGRES_PASSWORD,
  database: env.POSTGRES_NAME,
})

export default { pool }