const FilmeModel = require('../models/FilmeModel');

class FilmeController {
    // GET /v1/controle-filmes/filme
    static async listarTodos(req, res) {
        try {
            const filmes = await FilmeModel.buscarTodos();
            return res.status(200).json(filmes);
        } catch (error) {
            console.error('Erro ao listar filmes:', error);
            return res.status(500).json({ error: 'Erro interno ao buscar filmes.' });
        }
    }

    // GET /v1/controle-filmes/filme/:id
    static async buscarPorId(req, res) {
        try {
            const { id } = req.params;
            const filme = await FilmeModel.buscarPorId(Number(id));

            if (!filme) {
                return res.status(404).json({ message: 'Filme não encontrado.' });
            }

            return res.status(200).json(filme);
        } catch (error) {
            console.error('Erro ao buscar filme por id:', error);
            return res.status(500).json({ error: 'Erro interno ao buscar o filme.' });
        }
    }

    // GET /v1/controle-filmes/filtro/filme?nome=xxx
    static async filtrarFilmes(req, res) {
        try {
            const { nome } = req.query;
            
            if (!nome) {
                return res.status(400).json({ message: 'O parâmetro de busca "nome" é obrigatório.' });
            }

            const filmes = await FilmeModel.filtrar(nome);
            
            if (filmes.length === 0) {
                return res.status(404).json({ message: 'Nenhum filme encontrado com os critérios de busca.' });
            }

            return res.status(200).json(filmes);
        } catch (error) {
            console.error('Erro ao filtrar filmes:', error);
            return res.status(500).json({ error: 'Erro interno ao filtrar os filmes.' });
        }
    }
}

module.exports = FilmeController;
