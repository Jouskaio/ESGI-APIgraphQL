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

  /* POST */

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

  /* UPDATE */

  async updateShoe(
      key,
      pricePurchase,
      priceSold,
      datePurchase,
      dateSold,
      code,
      size_key,
      locationPurchase_key,
      locationSold_key,
  ) {
    const updateQuery =
        'UPDATE "SHOE" SET shoe_price_purchase = $2, shoe_price_sold = $3, shoe_date_sold = $4, shoe_date_purchase = $5, shoe_code = $6, size_id = $7, shoe_locpurchase = $8, shoe_locsold = $9 WHERE shoe_id = $1 RETURNING *';

    const values = [
      key,
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
    let result = await pool.query(updateQuery, values);

    return result.rows;
  }

  /* DELETE */

  async deleteShoe(key) {
    const deleteQuery = 'DELETE FROM "SHOE" WHERE shoe_id = $1 RETURNING *';
    const values = [key];

    let result = await pool.query(deleteQuery, values);

    return result.rows;
  }
}

module.exports = ShoePSQLDataSource;