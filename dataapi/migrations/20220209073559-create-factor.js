'use strict';
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('factors', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      d_id: {
        type: Sequelize.INTEGER
      },
      f_leaf: {
        type: Sequelize.STRING
      },
      f_look: {
        type: Sequelize.STRING
      },
      f_color: {
        type: Sequelize.STRING
      },
      f_slit: {
        type: Sequelize.STRING
      },
      f_colors: {
        type: Sequelize.STRING
      },
      f_more: {
        type: Sequelize.STRING
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('factors');
  }
};