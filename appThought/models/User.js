const { DataTypes } = require('sequelize')

const db = require("../db/conn")

const User = db.define('USER')({  // USER - ENTIDADE  --  User - Classe
    nome:{
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    }
})

module.exports = User