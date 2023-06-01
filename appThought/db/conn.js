const { Sequelize } = require('sequelize') // o Sequelize é o ORM -> quem conversa com o BD - faz a conexão e tudo mais(modela o BD)

const sequelize = new Sequelize('thoughts','root','123456',{
    host: 'localhost', // or 127.0.0.1
    dialect: 'mysql'
}); // construtor da class Sequelize

try {
    sequelize.authenticate()
    console.info('Conectamos no serviço de dados!')
} catch (error) {
    console.error('Não foi possível conectar ao serviço de dados: ', error)
}

module.exports = sequelize// qualquer pacote pode "ver"