'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class moreleafs extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  moreleafs.init({
    ml_name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'moreleafs',
    tableName: 'moreleafs',
    timestamps: true
  });
  return moreleafs;
};