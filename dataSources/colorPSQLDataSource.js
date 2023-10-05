const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ColorPSQLDataSource extends RESTDataSource {
  /* Queries */
  async colors() {
    let result = await pool.query('SELECT * FROM "COLOR"');
    return result.rows;
  }

  async colorByID(key) {
    let result = await pool.query('SELECT * FROM "COLOR" WHERE color_id = $1', [key]);
    return result.rows;
  }

  async colorByName(key) {
    let result = await pool.query('SELECT * FROM "COLOR" WHERE color_name = $1', [key]);
    return result.rows;
  }

  /* Mutations */

  async addColor(name) {
    const insertQuery = 'INSERT INTO "COLOR"(color_name) VALUES($1) RETURNING *';
    const values = [name];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }
}

module.exports = ColorPSQLDataSource;