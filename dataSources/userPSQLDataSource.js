const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class UserPSQLDataSource extends RESTDataSource {
  async users() {
    let result = await pools.query('SELECT * FROM USER');
    console.log(result);
    return result;
  }

  async userByID(key) {
    let result = await pools.query('SELECT * FROM USER WHERE size_id = $1', [key]);
    console.log(result);
    return result;
  }

  async userByUsername(key) {
    let result = await pools.query('SELECT * FROM USER WHERE size_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = UserPSQLDataSource;