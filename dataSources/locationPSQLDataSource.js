const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

const pools = pool.pool

class LocationPSQLDataSource extends RESTDataSource {
  async locations() {
    let result = await pools.query('SELECT * FROM LOCATION');
    console.log(result);
    return result;
  }

  async locationByID(key) {
    let result = await pools.query('SELECT * FROM LOCATION WHERE location_id = $1', [key]);
    console.log(result);
    return result;
  }

  async locationByName(key) {
    let result = await pools.query('SELECT * FROM LOCATION WHERE location_name = $1', [key]);
    console.log(result);
    return result;
  }
}

module.exports = LocationPSQLDataSource;