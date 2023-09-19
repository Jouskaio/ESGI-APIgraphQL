const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ModelPSQLDataSource extends RESTDataSource {
  async models() {
    let result = await pool.query('SELECT * FROM MODEL');
    return result.rows;
  }

  async modelByID(key) {
    let result = await pool.query('SELECT * FROM MODEL WHERE model_id = $1', [key]);
    return result.rows;
  }

  async modelByName(key) {
    let result = await pool.query('SELECT * FROM MODEL WHERE model_name = $1', [key]);
    return result.rows;
  }
}

module.exports = ModelPSQLDataSource;