const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    colors: (
      parent,
      args,
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => ColorPSQLDataSource.colors,
    color: (
      parent,
      { key },
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => ColorPSQLDataSource.colorByID(key).then(color => color ? color : new ApolloError("Color not found.", "RESOURCE_NOT_FOUND")),
    colorByName: (
      parent,
      { key },
      { dataSources: { ColorPSQLDataSource } },
      info
    ) => ColorPSQLDataSource.colorByName(key).then(color => color ? color : new ApolloError("Color not found.", "RESOURCE_NOT_FOUND")),
  },
  Brand: {
    name: (parent, args, { dataSources: { BrandPSQLDataSource } }) => parent.colorID ? BrandPSQLDataSource.brandByID(parent.colorID) : null,
  }
};

module.exports = resolvers;