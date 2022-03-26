'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class factors extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  factors.init({
    d_id: DataTypes.NUMBER,
    f_more: DataTypes.STRING,
    f_edge: DataTypes.STRING,
    f_leaf: DataTypes.STRING,
  }, {
    sequelize,
    modelName: 'factors',
    tableName: 'factors',
    timestamps: true
  });
  return factors;
};