const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

class FilmeModel {
    static async buscarTodos() {
        return await prisma.filme.findMany();
    }

    static async buscarPorId(id) {
        return await prisma.filme.findUnique({
            where: { id }
        });
    }

    static async filtrar(termo) {
        return await prisma.filme.findMany({
            where: {
                OR: [
                    {
                        nome: {
                            contains: termo,
                            // O MySQL por padrão é case-insensitive, mas podemos garantir com Prisma se necessário
                        }
                    },
                    {
                        sinopse: {
                            contains: termo
                        }
                    }
                ]
            }
        });
    }
}

module.exports = FilmeModel;
