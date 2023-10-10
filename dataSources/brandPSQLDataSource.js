const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class BrandPSQLDataSource extends RESTDataSource {

  /* Queries */

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

  /* Mutations */

  /* POST */

  async addBrand(name) {
    const insertQuery = 'INSERT INTO "BRAND"(brand_name) VALUES($1) RETURNING *';
    const values = [name];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }

  /* UPDATE */

  async updateBrand(key,  name) {
    const updateQuery = 'UPDATE "BRAND" SET brand_name = $2 WHERE brand_id = $1 RETURNING *';
    const values = [key, name];

    /* insert */
    let result = await pool.query(updateQuery, values);

    return result.rows;
  }
}

module.exports = BrandPSQLDataSource;