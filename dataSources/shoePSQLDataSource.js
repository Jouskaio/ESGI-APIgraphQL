const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class ShoePSQLDataSource extends RESTDataSource {
  async models() {
    let result = await pools.query('SELECT * FROM SHOE');
    console.log(result);
    return result;
  }

  async shoeByID(key) {
    let result = await pools.query('SELECT * FROM SHOE WHERE shoe_id = $1', [key]);
    console.log(result);
    return result;
  }

  async shoeByName(key) {
    let result = await pools.query('SELECT * FROM SHOE WHERE shoe_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = ShoePSQLDataSource;