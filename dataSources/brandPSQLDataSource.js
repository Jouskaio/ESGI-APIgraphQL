const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class BrandPSQLDataSource extends RESTDataSource {
  async brands() {
    let result = await pools.query('SELECT * FROM BRAND');
    console.log(result);
    return result;
  }

  async brandByID(key) {
    let result = await pools.query('SELECT * FROM BRAND WHERE brand_id = $1', [key]);
    console.log(result);
    return result;
  }

  async brandByName(key) {
    let result = await pools.query('SELECT * FROM BRAND WHERE brand_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = BrandPSQLDataSource;