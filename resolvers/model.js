const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    models: async (
      parent,
      args,
      { dataSources: { ModelPSQLDataSource } },
      info
    ) => {
      const result = await ModelPSQLDataSource.models();

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
      { dataSources: { ModelPSQLDataSource } },
      info
    ) => {
      const model = await ModelPSQLDataSource.modelByID(key);
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
      { dataSources: { ModelPSQLDataSource } },
      info
    ) => {
      const model = await ModelPSQLDataSource.modelByName(name);
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
    brand_key: async (parent, args, { dataSources: { BrandPSQLDataSource } }) => {
      const brand_key = await BrandPSQLDataSource.brandByID(parent.brand_key);
      if (!brand_key) {
        throw new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: brand_key[0].brand_id,
        name: brand_key[0].brand_name,
      };
    },
  },
};

module.exports = resolvers;