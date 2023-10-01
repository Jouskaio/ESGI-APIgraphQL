const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');


class SizePSQLDataSource extends RESTDataSource {
  /* Queries */
  async sizes() {
    let result = await pool.query('SELECT * FROM "SIZE"');
    return result.rows;
  }

  async sizeByID(key) {
    let result = await pool.query('SELECT * FROM "SIZE" WHERE size_id = $1', [key]);
    return result.rows;
  }

  async sizeByName(key) {
    let result = await pool.query('SELECT * FROM "SIZE" WHERE size_name = $1', [key]);
    return result.rows;
  }

  /* Mutations */

  async addSize(name) {
    const insertQuery = 'INSERT INTO "SIZE"(size_name) VALUES($1) RETURNING *';
    const values = [name];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }
}

module.exports = SizePSQLDataSource;