const { ApolloError } = require("apollo-server");

const resolvers = {
  /* Queries */
  Query: {
    locations: async (
      parent,
      args,
      { dataSources: { LocationPSQLDataSource } },
      info
    ) => {
      const result = await LocationPSQLDataSource.locations();

      // If the result is empty, return an empty array
      if (!result || result.length === 0) {
        return [];
      }

      // Otherwise, return the result mapped to the schema
      return result.map((location) => {
        return {
          key: location.location_id,
          name: location.location_name,
        };
      });
    },
    location: async (
      parent,
      { key },
      { dataSources: { LocationPSQLDataSource } },
      info
    ) => {
      const location = await LocationPSQLDataSource.locationByID(key);
      if (!location) {
        throw new ApolloError("Location not found.", "RESOURCE_NOT_FOUND");
      }
      return {
        key: location[0].location_id,
        name: location[0].location_name,
      };
    },
    locationByName: async (
      parent,
      { name },
      { dataSources: { LocationPSQLDataSource } },
      info
    ) => {
      const location = await LocationPSQLDataSource.locationByName(name);
      if (!location) {
        throw new ApolloError("Location not found.", "RESOURCE_NOT_FOUND");
      }

      return {
        key: location[0].location_id,
        name: location[0].location_name,
      };
    }
  },

  /* Mutations */

  Mutation: {
    addLocation: async (
      parent,
      { name },
      { dataSources: { LocationPSQLDataSource } },

    ) => {
      const location = await LocationPSQLDataSource.addLocation(name);

      if (!location) {
        throw new ApolloError("Couldn't create location.", "RESOURCE_NOT_CREATED");
      }

      return {
        key: location[0].location_id,
        name: location[0].location_name,
      };
    }
  },
  Location: {
    key: async (parent) => {
      return parent.key;
    },
    name: async (parent) => {
      return parent.name;
    },
  },
};

module.exports = resolvers;