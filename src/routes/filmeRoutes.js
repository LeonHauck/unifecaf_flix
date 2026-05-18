const express = require('express');
const FilmeController = require('../controllers/FilmeController');

const router = express.Router();

// GET /v1/controle-filmes/filme - Listar todos os filmes
router.get('/filme', FilmeController.listarTodos);

// GET /v1/controle-filmes/filtro/filme?nome=xxx - Filtrar filmes
router.get('/filtro/filme', FilmeController.filtrarFilmes);

// GET /v1/controle-filmes/filme/:id - Buscar um filme pelo ID
router.get('/filme/:id', FilmeController.buscarPorId);

module.exports = router;
