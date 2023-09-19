const { ApolloError } = require("apollo-server");

const resolvers = {
  Query: {
    brands: (
      parent,
      args,
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => BrandPSQLDataSource.brands,
    brand: (
      parent,
      { key },
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => BrandPSQLDataSource.brandByID(key).then(brand => brand ? brand : new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND")),
    brandByName: (
      parent,
      { key },
      { dataSources: { BrandPSQLDataSource } },
      info
    ) => BrandPSQLDataSource.brandByName(key).then(brand => brand ? brand : new ApolloError("Brand not found.", "RESOURCE_NOT_FOUND")),
  },
  Brand: {
    name: (parent, args, { dataSources: { BrandPSQLDataSource } }) => parent.brandID ? BrandPSQLDataSource.brandByID(parent.brandID) : null,
  }
};

module.exports = resolvers;