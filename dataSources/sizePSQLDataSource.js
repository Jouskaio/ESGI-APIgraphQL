const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class SizePSQLDataSource extends RESTDataSource {
  async sizes() {
    let result = await pools.query('SELECT * FROM SIZE');
    console.log(result);
    return result;
  }

  async sizeByID(key) {
    let result = await pools.query('SELECT * FROM SIZE WHERE size_id = $1', [key]);
    console.log(result);
    return result;
  }

  async sizeByName(key) {
    let result = await pools.query('SELECT * FROM SIZE WHERE size_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = SizePSQLDataSource;