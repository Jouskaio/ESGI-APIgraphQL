const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');


class SizePSQLDataSource extends RESTDataSource {
  async sizes() {
    let result = await pool.query('SELECT * FROM SIZE');
    return result.rows;
  }

  async sizeByID(key) {
    let result = await pool.query('SELECT * FROM SIZE WHERE size_id = $1', [key]);
    return result.rows;
  }

  async sizeByName(key) {
    let result = await pool.query('SELECT * FROM SIZE WHERE size_name = $1', [key]);
    return result.rows;
  }
}

module.exports = SizePSQLDataSource;