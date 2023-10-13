const { ApolloError } = require("apollo-server");

const resolvers = {
    /* Queries */
    Query: {
        search: async (
            parent,
            { query },
            { dataSources: {
                BrandPSQLDataSource,
                ModelPSQLDataSource,
                ColorPSQLDataSource,
            }},
            info
        ) => {
            const results = [];

            const brand = await BrandPSQLDataSource.brandByName(query);
            const model = await ModelPSQLDataSource.modelByName(query);
            const color = await ColorPSQLDataSource.colorByName(query);

            console.log(JSON.stringify(brand[0]))
            console.log(JSON.stringify(brand))
            console.log(JSON.stringify(model))

            if (brand[0] !== undefined) {
                results.push({ __typename: 'Brand',
                    key: brand[0].brand_id,
                    name: brand[0].brand_name,
                });

                return results;
            }

            if (model[0] !== undefined) {
                results.push({ __typename: 'Model',
                    key: model[0].model_id,
                    name: model[0].model_name,
                    brand: model[0].brand_id,
                });

                return results;
            }

            if (color[0] !== undefined) {
                results.push({ __typename: 'Color',
                    key: color[0].color_id,
                    name: color[0].color_name,
                });

                return results;
            }

            if (results.length === 0) {
                throw new ApolloError('Resource not found', 'RESOURCE_NOT_FOUND');
            }
        },
    },

    SearchResult: {
        __resolveType(obj, context, info) {
            if (obj.__typename) {
                return obj.__typename;
            }
            return null;
        },
    },
};

module.exports = resolvers;