const { config } = require('dotenv');
const { Pool } = require('pg');

config();

const pool = new Pool({
  host: process.env.POSTGRES_HOST,
  port: process.env.POSTGRES_PORT,
  user: process.env.POSTGRES_USER,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_NAME,
});


pool.on('error', (err) => {
  console.error('Error while connecting... check your pool :', err);
});

pool.connect((err, client, done) => {
  if (err) {
    console.error('Impossible to connect to database :', err);
  } else {
    console.log('Connexion OK');
  }
  done();
});
module.exports = { pool };