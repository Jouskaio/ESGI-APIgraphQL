const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');


class BrandPSQLDataSource extends RESTDataSource {
  async brands() {
    let result = await pool.query('SELECT * FROM "BRAND"');
    return result.rows;
  }

  async brandByID(key) {
    let result = await pool.query('SELECT * FROM "BRAND" WHERE brand_id = $1', [key]);
    return result.rows;
  }

  async brandByName(key) {
    let result = await pool.query('SELECT * FROM "BRAND" WHERE brand_name = $1', [key]);
    return result.rows;
  }
}

module.exports = BrandPSQLDataSource;