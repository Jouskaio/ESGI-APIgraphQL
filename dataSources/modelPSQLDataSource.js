const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class ModelPSQLDataSource extends RESTDataSource {
  async models() {
    let result = await pools.query('SELECT * FROM MODEL');
    console.log(result);
    return result;
  }

  async modelByID(key) {
    let result = await pools.query('SELECT * FROM MODEL WHERE model_id = $1', [key]);
    console.log(result);
    return result;
  }

  async modelByName(key) {
    let result = await pools.query('SELECT * FROM MODEL WHERE model_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = ModelPSQLDataSource;