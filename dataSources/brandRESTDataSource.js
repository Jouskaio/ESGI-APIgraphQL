const { compact } = require("lodash");
const { RESTDataSource } = require("apollo-datasource-rest")
import pool from '../config/postgresql.js'

const pools = pool.pool

class CharacterRESTDataSource extends RESTDataSource {
  get characters() {
    return this.get("/characters");
  }

  findCharacterByKey(key) {
    return this.get(`/character/${key}`).catch(error => {
      if (error.extensions.response.status === 404) {
        return null;
      }
      return error;
    })
  }

  async filterCharactersByKeys(keys) {
    let characters = keys.map(key => this.findCharacterByKey(key));
    return Promise.all(characters).then(([...results]) => compact(results));
  }

  async filterCharactersByHouseKey(houseKey) {
    const characters = await this.characters;
    return characters.filter(character => character.royalHouseKey === houseKey);
  }
}

module.exports = CharacterRESTDataSource;