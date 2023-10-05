const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ModelPSQLDataSource extends RESTDataSource {
  /* Queries */
  async models() {
    let result = await pool.query('SELECT * FROM "MODEL"');
    return result.rows;
  }

  async modelByID(key) {
    let result = await pool.query('SELECT * FROM "MODEL" WHERE model_id = $1', [key]);
    return result.rows;
  }

  async modelByName(key) {
    let result = await pool.query('SELECT * FROM "MODEL" WHERE model_name = $1', [key]);
    return result.rows;
  }

  /* Mutations */

  async addModel(name, brand_key) {
    const insertQuery = 'INSERT INTO "MODEL"(model_name, brand_id) VALUES($1, $2) RETURNING *';
    const values = [name, brand_key];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }
}

module.exports = ModelPSQLDataSource;