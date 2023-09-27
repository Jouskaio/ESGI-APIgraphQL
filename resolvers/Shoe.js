const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    shoes: async (
      parent,
      args,
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const result = await ShoePSQLDataSource.shoes();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((shoe) => {
        return {
          key: shoe.shoe_id,
          pricePurchase: shoe.shoe_price_purchase,
          priceSold: shoe.shoe_price_sold,
          datePurchase: shoe.shoe_date_purchase,
          dateSold: shoe.shoe_date_sold,
          code: shoe.shoe_code,
          size_key: shoe.size_id,
          locationPurchase: shoe.shoe_locpurchase,
          locationSold: shoe.shoe_locsold,
        };
      });
    },
    shoe: async (
      parent,
      { key },
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const shoe = await ShoePSQLDataSource.shoeByID(key);
      if (!shoe) {
        throw new ApolloError("Shoe not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: shoe[0].shoe_id,
        pricePurchase: shoe[0].shoe_price_purchase,
        priceSold: shoe[0].shoe_price_sold,
        datePurchase: shoe[0].shoe_date_purchase,
        dateSold: shoe[0].shoe_date_sold,
        code: shoe[0].shoe_code,
        size_key: shoe[0].size_id,
        locationPurchase: shoe[0].shoe_locpurchase,
        locationSold: shoe[0].shoe_locsold,
      };
    },
    shoeByCode: async (
      parent,
      { code },
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const shoe = await ShoePSQLDataSource.shoeByCode(code);
      if (!shoe) {
        throw new ApolloError("shoe not found.", "RESOURCE_NOT_FOUND");
      }

      return {
        key: shoe[0].shoe_id,
        pricePurchase: shoe[0].shoe_price_purchase,
        priceSold: shoe[0].shoe_price_sold,
        datePurchase: shoe[0].shoe_date_purchase,
        dateSold: shoe[0].shoe_date_sold,
        code: shoe[0].shoe_code,
        size_key: shoe[0].size_id,
        locationPurchase: shoe[0].shoe_locpurchase,
        locationSold: shoe[0].shoe_locsold,
      };
    }
  },
  Shoe: {
    key: async (parent) => {
      return parent.key;
    },
    pricePurchase: async (parent) => {
      return parent.pricePurchase;
    },
    priceSold: async (parent) => {
      return parent.priceSold;
    },
    datePurchase: async (parent) => {
      return parent.datePurchase;
    },
    dateSold: async (parent) => {
      return parent.dateSold;
    },
    code: async (parent) => {
      return parent.code;
    },
    size_key: async (parent, args, { dataSources: { SizePSQLDataSource } }) => {
      const size_key = await SizePSQLDataSource.sizeByID(parent.size_key);
      if (!size_key) {
        throw new ApolloError("Size not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: size_key[0].size_id,
        name: size_key[0].size_name,
      };
    },
    locationPurchase: async (parent, args, { dataSources: { LocationPSQLDataSource } }) => {
      const locationPurchase = await LocationPSQLDataSource.locationByID(parent.locationPurchase);
      if (!locationPurchase) {
        throw new ApolloError("Location not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: locationPurchase[0].shoe_locpurchase,
        name: locationPurchase[0].location_name,
      };
    },
    locationSold: async (parent, args, { dataSources: { LocationPSQLDataSource } }) => {
      const locationSold = await LocationPSQLDataSource.locationByID(parent.locationSold);
      if (!locationSold) {
        throw new ApolloError("Location not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: locationSold[0].shoe_locsold,
        name: locationSold[0].location_name,
      };
    },
  },
};

module.exports = resolvers;