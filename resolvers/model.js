const { ApolloError } = require("apollo-server");

const resolvers = {
  /* Queries */
  Query: {
    models: async (
        parent,
        { start, offset },
        { dataSources: { ModelPSQLDataSource } },
        info
    ) => {
      const result = await ModelPSQLDataSource.getPaginatedModels(start, offset);

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((model) => {
        return {
          key: model.model_id,
          name: model.model_name,
          brand: model.brand_id,
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
        brand: model[0].brand_id,
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
        brand: model[0].brand_id,
      };
    }
  },

  /* Mutations */

  Mutation: {
    addModel: async (
        parent,
        { name, brand_key },
        { dataSources: { ModelPSQLDataSource } },

    ) => {
      const model = await ModelPSQLDataSource.addModel(name, brand_key);

      if (!model) {
        throw new ApolloError("Couldn't create model.", "RESOURCE_NOT_CREATED");
      }

      return {
        key: model[0].model_id,
        name: model[0].model_name,
        brand: model[0].brand_id,
      };
    },
    updateModel: async (
        parent,
        { key, name, brand_key },
        { dataSources: { ModelPSQLDataSource } },

    ) => {
      const model = await ModelPSQLDataSource.updateModel(key, name, brand_key);

      if (!model) {
        throw new ApolloError("Couldn't update model.", "RESOURCE_NOT_UPDATED");
      }

      return {
        key: model[0].model_id,
        name: model[0].model_name,
        brand: model[0].brand_id,
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
  },
};

module.exports = resolvers;