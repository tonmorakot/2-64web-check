'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class woundonleafs extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  woundonleafs.init({
    wol_name: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'woundonleafs',
    tableName: 'woundonleafs',
    timestamps: true
  });
  return woundonleafs;
};