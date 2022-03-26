'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class woundcolors extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  woundcolors.init({
    wc_name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'woundcolors',
    tableName: 'woundcolors',
    timestamps: true
  });
  return woundcolors;
};