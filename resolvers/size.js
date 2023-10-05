const { ApolloError } = require("apollo-server");

const resolvers = {
  /* Queries */
  Query: {
    sizes: async (
      parent,
      args,
      { dataSources: { SizePSQLDataSource } },
      info
    ) => {
      const result = await SizePSQLDataSource.sizes();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((size) => ({
        key: size.size_id,
        name: size.size_name,
      }));
    },
    size: async (
      parent,
      { key },
      { dataSources: { SizePSQLDataSource } },
      info
    ) => {
      const size = await SizePSQLDataSource.sizeByID(key);
      if (!size) {
        throw new ApolloError("Size not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: size[0].size_id,
        name: size[0].size_name,
      };
    },
    sizeByName: async (
      parent,
      { name },
      { dataSources: { SizePSQLDataSource } },
      info
    ) => {
      const size = await SizePSQLDataSource.sizeByName(name);
      if (!size) {
        throw new ApolloError("Size not found.", "RESOURCE_NOT_FOUND");
      }

      return {
        key: size[0].size_id,
        name: size[0].size_name,
      };
    },
  },

  /* Mutations */

  Mutation: {
    addSize: async (
        parent,
        { name },
        { dataSources: { SizePSQLDataSource } },

    ) => {
      const size = await SizePSQLDataSource.addSize(name);

      if (!size) {
        throw new ApolloError("Couldn't create size.", "RESOURCE_NOT_CREATED");
      }

      return {
        key: size[0].size_id,
        name: size[0].size_name,
      };
    }
  },
  Size: {
    key: async (parent) => {
      return parent.key;
    },
    name: async (parent) => {
      return parent.name;
    },
  },
};

module.exports = resolvers;
