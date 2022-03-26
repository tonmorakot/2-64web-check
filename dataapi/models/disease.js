'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class disease extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  disease.init({
    f_id: DataTypes.NUMBER,
    d_name: DataTypes.STRING,
    d_details: DataTypes.STRING,
    d_protect: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'disease',
    tableName: 'disease',
    timestamps: true
  });
  return disease;
};