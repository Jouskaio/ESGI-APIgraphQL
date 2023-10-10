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

  /* POST */

  async addModel(name, brand_key) {
    const insertQuery = 'INSERT INTO "MODEL"(model_name, brand_id) VALUES($1, $2) RETURNING *';
    const values = [name, brand_key];

    /* insert */
    let result = await pool.query(insertQuery, values);

    return result.rows;
  }

  /* UPDATE */

  async updateModel(key, name, brand_key) {
    const updateQuery = 'UPDATE "MODEL" SET model_name = $2, brand_id = $3 WHERE model_id = $1 RETURNING *';
    const values = [key, name, brand_key];

    /* insert */
    let result = await pool.query(updateQuery, values);

    return result.rows;
  }
}

module.exports = ModelPSQLDataSource;