const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ShoePSQLDataSource extends RESTDataSource {
  async models() {
    let result = await pool.query('SELECT * FROM "SHOE"');
    return result.rows;
  }

  async shoeByID(key) {
    let result = await pool.query('SELECT * FROM "SHOE" WHERE shoe_id = $1', [key]);
    return result.rows;
  }

  async shoeByName(key) {
    let result = await pool.query('SELECT * FROM "SHOE" WHERE shoe_name = $1', [key]);
    return result.rows;
  }
}

module.exports = ShoePSQLDataSource;