const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
const { pool } = require('../config/postgresql.js');

class ShoePSQLDataSource extends RESTDataSource {
  /* Queries */
  async shoes() {
    let result = await pool.query('SELECT * FROM "SHOE"');
    return result.rows;
  }

  async shoeByID(key) {
    let result = await pool.query('SELECT * FROM "SHOE" WHERE shoe_id = $1', [key]);
    return result.rows;
  }

  async shoeByCode(key) {
    let result = await pool.query('SELECT * FROM "SHOE" WHERE shoe_code = $1', [key]);
    return result.rows;
  }

  /* Mutations */

  async addShoe(
    pricePurchase,
    priceSold,
    datePurchase,
    dateSold,
    code,
    size_key,
    locationPurchase_key,
    locationSold_key,
  ) {
    const insertQuery =
        'INSERT INTO "SHOE"(shoe_price_purchase, shoe_price_sold, shoe_date_sold, shoe_date_purchase, shoe_code, size_id, shoe_locpurchase, shoe_locsold) VALUES($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *';

    const values = [
      pricePurchase,
      priceSold,
      datePurchase,
      dateSold,
      code,
      size_key,
      locationPurchase_key,
      locationSold_key,
    ];

    /* insert */
    let result = await pool.query(insertQuery, values);

    console.log(JSON.stringify(result));

    return result.rows;
  }
}

module.exports = ShoePSQLDataSource;