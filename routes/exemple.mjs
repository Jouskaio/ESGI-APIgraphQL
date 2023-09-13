import express, { query } from 'express'
import pool from '../config/postgresql.mjs'

const employer = express.Router();

const pools = pool.pool

employer.post('/createEmployer', async (req, res) => {
  try {
    const employer_name = req.query.employer_name;
    const employer_firstname = req.query.employer_firstname;
    const employer_phone = req.query.employer_phone;
    const employer_email = req.query.employer_email;
    const employer_password = req.query.employer_password;

    const countEmployer = await pools.query('SELECT COUNT(*) FROM employer WHERE employer_email = $1', [employer_email])
    let countEmployerLastname = countEmployer.rows[0].count

    if (countEmployerLastname == 0) {
      const result = await pools.query('INSERT INTO employer (employer_name , employer_firstname, employer_phone, employer_email, employer_password ) VALUES ($1,$2,$3,$4,$5) RETURNING id',
        [employer_name, employer_firstname, employer_phone, employer_email, employer_password]);
      const employer_id = result.rows[0].id;
      res.json({ status: 200, employer: employer_id, error: null });
    } else {
      res.status(401).send("The insertion could not be performed because this email already exists");
    }
    pools.end;
  } catch (error) {
    console.error(error);
    res.status(500).send("Error server");
  }
  res.end
});

employer.post('/login', async (req, res) => {
  try {
    const email = req.query.email;
    const password = req.query.password;

    const getEmployer = await pools.query('SELECT * FROM employer WHERE employer_email=$1', [email]);
    if (getEmployer.rows.length > 0) {
      let employer = getEmployer.rows[0]
      let employerPassword = employer['employer_password']
      const isValidPassword = await bcrypt.compare(password, employerPassword)
      if (isValidPassword) {
        const getLogin = await pools.query('SELECT id FROM employer WHERE employer_email=$1', [email]);
        if (getLogin.rows.length > 0) {
          res.json({ status: 200, employer: getLogin.rows[0], error: null });
        } else {
          res.status(401).send("This login does not exist");
        }
      } else {
        res.status(401).send("Invalid password");
      }
    } else {
      res.status(401).send("Employer doesn't exist");
    }
    pools.end;
  } catch (error) {
    console.error(error);
    res.status(500).send("Error server");
  }
  res.end
});


employer.get('/employers', async (req, res) => {
  try {
    const getEmployer = await pools.query('SELECT id, employer_name, employer_firstname FROM employer ORDER BY id');
    if (getEmployer.rows.length > 0) {
      res.json({ status: 200, employer: getEmployer.rows, error: null });
    } else {
      res.status(401).send("There are no employer");
    }
    pools.end;
  } catch (error) {
    console.error(error);
    res.status(500).send("Error server");
  }
  res.end
});
export default employer