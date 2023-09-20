const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    shoes: async (
      parent,
      args,
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const result = await ShoePSQLDataSource.models();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((model) => {
        return {
          key: model.model_id,
          name: model.model_name,
          brand_key: model.brand_id,
        };
      });
    },
    model: async (
      parent,
      { key },
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const model = await ShoePSQLDataSource.modelByID(key);
      if (!model) {
        throw new ApolloError("Model not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: model[0].model_id,
        name: model[0].model_name,
        brand_key: model[0].brand_id,
      };
    },
    modelByName: async (
      parent,
      { name },
      { dataSources: { ShoePSQLDataSource } },
      info
    ) => {
      const model = await ShoePSQLDataSource.modelByName(name);
      if (!model) {
        throw new ApolloError("Model not found.", "RESOURCE_NOT_FOUND");
      }

      return {
        key: model[0].model_id,
        name: model[0].model_name,
        brand_key: model[0].brand_id,
      };
    }
  },
  Model: {
    key: async (parent) => {
      return parent.key;
    },
    name: async (parent) => {
      return parent.name;
    },
    brand: async (parent, args, { dataSources: { ShoePSQLDataSource } }) => {
      const brand = await ShoePSQLDataSource.brandByID(parent.brand_key);
      if (!brand) {
        throw new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: brand[0].brand_id,
        name: brand[0].brand_name,
      };
    }
  },
};

module.exports = resolvers;