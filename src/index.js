require('dotenv').config();
const express = require('express');
const cors = require('cors');
const filmeRoutes = require('./routes/filmeRoutes');

const app = express();
const PORT = process.env.PORT || 8080;

app.use(cors());
app.use(express.json());

// Rotas
app.use('/v1/controle-filmes', filmeRoutes);

app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});
