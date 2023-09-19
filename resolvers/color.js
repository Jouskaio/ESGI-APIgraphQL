const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    colors: async (
      parent,
      args,
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => {
      const result = await ColorPSQLDataSource.colors();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((color) => {
        return {
          key: color.color_id,
          name: color.color_name,
        };
      });
    },
    color: async (
      parent,
      { key },
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => {
      const color = await ColorPSQLDataSource.colorByID(key);
      if (!color) {
        throw new ApolloError("Color not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: color[0].brand_id,
        name: color[0].brand_name,
      };
    },
    colorByName: async (
      parent,
      { name },
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => {
      const color = await ColorPSQLDataSource.colorByName(name);
      if (!color) {
        throw new ApolloError("Color not found.", "RESOURCE_NOT_FOUND");
      }

      return {
        key: color[0].brand_id,
        name: color[0].brand_name,
      };
    }
  },
  Color: {
    key: async (parent) => {
      return parent.key;
    },
    name: async (parent) => {
      return parent.name;
    },
  },
};

module.exports = resolvers;