'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class leafcolors extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  leafcolors.init({
    lf_name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'leafcolors',
    tableName: 'leafcolors',
    timestamps: true
  });
  return leafcolors;
};