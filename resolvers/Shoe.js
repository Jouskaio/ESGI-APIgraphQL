const { ApolloError } = require("apollo-server");

/** IMPORTANT : resolver + schéma à revoir pour table shoe, liaisons impossible (mutations
 * queries) entre clés étrangères "shoe_locpurchase"/"shoe_locsold" car elles référencent
 * location_id, voir si harmonisation nécessaire*/

const resolvers = {
  /* Queries */
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
          size: shoe.size_id,
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
        size: shoe[0].size_id,
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
        size: shoe[0].size_id,
        locationPurchase: shoe[0].shoe_locpurchase,
        locationSold: shoe[0].shoe_locsold,
      };
    }
  },

  /* Mutations */

  Mutation: {
    addShoe: async (
        parent,
        {
          pricePurchase,
          priceSold,
          datePurchase,
          dateSold,
          code,
          size_key,
          brand_key,
          model_key,
          locationPurchase_key,
          locationSold_key,
        },
        { dataSources: { ShoePSQLDataSource } },
    ) => {
      const shoe = await ShoePSQLDataSource.addShoe(
          pricePurchase,
          priceSold,
          datePurchase,
          dateSold,
          code,
          size_key,
          brand_key,
          model_key,
          locationPurchase_key,
          locationSold_key,
      );

      if (!shoe) {
        throw new ApolloError("Couldn't create shoe.", "RESOURCE_NOT_CREATED");
      }

      return {
        key: shoe[0].shoe_id,
        pricePurchase: shoe[0].shoe_price_purchase,
        priceSold: shoe[0].shoe_price_sold,
        datePurchase: shoe[0].shoe_date_purchase,
        dateSold: shoe[0].shoe_date_sold,
        code: shoe[0].shoe_code,
        size: shoe[0].size_id,
        brand: shoe[0].brand_id,
        model: shoe[0].model_id,
        locationPurchase: shoe[0].shoe_locpurchase,
        locationSold: shoe[0].shoe_locsold,
      };
    },
    updateShoe: async (
        parent,
        {
          key,
          pricePurchase,
          priceSold,
          datePurchase,
          dateSold,
          code,
          size_key,
          locationPurchase_key,
          locationSold_key,
        },
        { dataSources: { ShoePSQLDataSource } },

    ) => {
      const shoe = await ShoePSQLDataSource.updateShoe(
          key,
          pricePurchase,
          priceSold,
          datePurchase,
          dateSold,
          code,
          size_key,
          locationPurchase_key,
          locationSold_key,
      );

      if (!shoe) {
        throw new ApolloError("Couldn't update shoe.", "RESOURCE_NOT_UPDATED");
      }

      return {
        key: shoe[0].shoe_id,
        pricePurchase: shoe[0].shoe_price_purchase,
        priceSold: shoe[0].shoe_price_sold,
        datePurchase: shoe[0].shoe_date_purchase,
        dateSold: shoe[0].shoe_date_sold,
        code: shoe[0].shoe_code,
        size: shoe[0].size_id,
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
    size: async (parent, args, { dataSources: { SizePSQLDataSource } }) => {
      const size = await SizePSQLDataSource.sizeByID(parent.size);
      if (!size) {
        throw new ApolloError("Size not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: size[0].size_id,
        name: size[0].size_name,
      };
    },
    brand: async (parent, args, { dataSources: { BrandPSQLDataSource } }) => {
      const brand = await BrandPSQLDataSource.brandByID(parent.brand);
      if (!brand) {
        throw new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: brand[0].brand_id,
        name: brand[0].brand_name,
      };
    },
    model: async (parent, args, { dataSources: { ModelPSQLDataSource } }) => {
      const model = await ModelPSQLDataSource.modelByID(parent.model);
      if (!model) {
        throw new ApolloError("Model not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: model[0].model_id,
        name: model[0].model_name,
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