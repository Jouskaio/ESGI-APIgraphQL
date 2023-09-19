const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class ColorPSQLDataSource extends RESTDataSource {
  async colors() {
    let result = await pools.query('SELECT * FROM COLOR');
    console.log(result);
    return result;
  }

  async colorByID(key) {
    let result = await pools.query('SELECT * FROM COLOR WHERE color_id = $1', [key]);
    console.log(result);
    return result;
  }

  async colorByName(key) {
    let result = await pools.query('SELECT * FROM COLOR WHERE color_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = ColorPSQLDataSource;