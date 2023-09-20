const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class UserPSQLDataSource extends RESTDataSource {
  async users() {
    let result = await pool.query('SELECT * FROM "USER"');
    return result.rows;
  }

  async userByID(key) {
    let result = await pool.query('SELECT * FROM "USER" WHERE size_id = $1', [key]);
    return result.rows;
  }

  async userByUsername(key) {
    let result = await pool.query('SELECT * FROM "USER" WHERE size_name = $1', [key]);
    return result.rows;
  }
}

module.exports = UserPSQLDataSource;