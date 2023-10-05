const { ApolloError } = require("apollo-server");

const resolvers = {

  /* Queries */

  Query: {
    brands: async (
      parent,
      args,
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => {
      const result = await BrandPSQLDataSource.brands();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((brand) => ({
        key: brand.brand_id,
        name: brand.brand_name,
      }));
    },
    brand: async (
      parent,
      { key },
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => {
      const brand = await BrandPSQLDataSource.brandByID(key);
      if (!brand) {
        throw new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: brand[0].brand_id,
        name: brand[0].brand_name,
      };
    },
    brandByName: async (
      parent,
      { name },
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => {
      const brand = await BrandPSQLDataSource.brandByName(name);
      if (!brand) {
        throw new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND");
      }

      console.log(JSON.stringify(brand));

      return {
        key: brand[0].brand_id,
        name: brand[0].brand_name,
      };
    },
  },

  /* Mutations */

  Mutation: {
    addBrand: async (
        parent,
        { name },
        { dataSources: { BrandPSQLDataSource } },

    ) => {
      const brand = await BrandPSQLDataSource.addBrand(name);

      if (!brand) {
        throw new ApolloError("Couldn't create brand.", "RESOURCE_NOT_CREATED");
      }

      return {
        key: brand[0].brand_id,
        name: brand[0].brand_name,
      };
    }
  },
  Brand: {
    key: async (parent) => {
      return parent.key;
    },
    name: async (parent) => {
      return parent.name;
    },
  },
};

module.exports = resolvers;
