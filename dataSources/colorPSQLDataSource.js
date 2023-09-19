const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ColorPSQLDataSource extends RESTDataSource {
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
}

module.exports = ColorPSQLDataSource;