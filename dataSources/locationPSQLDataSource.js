const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');


class LocationPSQLDataSource extends RESTDataSource {
  /* Queries */
  async locations() {
    let result = await pool.query('SELECT * FROM "LOCATION"');
    return result.rows;
  }

  async locationByID(key) {
    let result = await pool.query('SELECT * FROM "LOCATION" WHERE location_id = $1', [key]);
    return result.rows;
  }

  async locationByName(key) {
    let result = await pool.query('SELECT * FROM "LOCATION" WHERE location_name = $1', [key]);
    return result.rows;
  }

  /* Mutations */

  async addLocation(name) {
    const insertQuery = 'INSERT INTO "LOCATION"(location_name) VALUES($1) RETURNING *';
    const values = [name];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }
}

module.exports = LocationPSQLDataSource;