# 🎬 UniFECAF Flix - API RESTful

![Node.js](https://img.shields.io/badge/Node.js-43853D?style=for-the-badge&logo=node.js&logoColor=white)
![Express.js](https://img.shields.io/badge/Express.js-404D59?style=for-the-badge)
![Prisma](https://img.shields.io/badge/Prisma-3982CE?style=for-the-badge&logo=Prisma&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)

> Uma API RESTful moderna para gerenciamento de um acervo de filmes (streaming), desenvolvida como projeto acadêmico para a disciplina de Programação Back-End (UniFECAF).

## 🚀 Sobre o Projeto

Este projeto tem como objetivo principal a construção do zero de uma API robusta seguindo os padrões modernos de desenvolvimento web. A arquitetura foi desenhada utilizando o modelo **MVC (Model-View-Controller)**, garantindo a separação clara de responsabilidades, alta manutenibilidade e escalabilidade do código.

Para a comunicação com o banco de dados relacional (MySQL), utilizamos o **Prisma ORM**, que não só agiliza o desenvolvimento através de sua tipagem e sintaxe amigável, como previne ataques como SQL Injection.

## 🛠️ Tecnologias Utilizadas

- **[Node.js](https://nodejs.org/en/)**: Ambiente de execução JavaScript server-side.
- **[Express](https://expressjs.com/)**: Framework minimalista para criação de rotas e middlewares.
- **[Prisma ORM](https://www.prisma.io/)**: Ferramenta de mapeamento objeto-relacional (ORM) de próxima geração.
- **[MySQL](https://www.mysql.com/)**: Sistema de gerenciamento de banco de dados relacional.
- **[Dotenv](https://github.com/motdotla/dotenv)**: Gerenciamento seguro de variáveis de ambiente.

## 📁 Estrutura da Arquitetura (MVC)

A aplicação foi organizada rigorosamente em pastas para atender ao princípio de responsabilidade única:

```bash
unifecaf_flix/
├── prisma/
│   └── schema.prisma        # Modelo do BD e configurações do Prisma
├── src/
│   ├── controllers/         # Regras de negócio e status HTTP
│   │   └── FilmeController.js
│   ├── models/              # Comunicação direta com o banco de dados
│   │   └── FilmeModel.js
│   ├── routes/              # Endpoints REST e redirecionamento 
│   │   └── filmeRoutes.js
│   └── index.js             # Entry point do servidor
└── docs/                    # Documentação Teórica do Projeto
```

## 🌐 Endpoints da API

| Método | Rota | Descrição |
|---|---|---|
| `GET` | `/v1/controle-filmes/filme` | Retorna a lista completa de todos os filmes do acervo. |
| `GET` | `/v1/controle-filmes/filme/:id` | Retorna os detalhes de um filme específico buscando pelo seu ID. |
| `GET` | `/v1/controle-filmes/filtro/filme?nome=xxx` | Filtra e retorna filmes cujo nome ou sinopse contenham a palavra pesquisada. |

## 💻 Como Rodar o Projeto Localmente

Siga os passos abaixo para testar a aplicação em sua própria máquina:

**1. Clone este repositório:**
```bash
git clone https://github.com/LeonHauck/unifecaf_flix.git
```

**2. Instale as dependências:**
```bash
cd unifecaf_flix
npm install
```

**3. Configure o Banco de Dados:**
* Certifique-se de ter o MySQL rodando (via XAMPP, Docker ou local).
* Importe o arquivo `script_banco.sql` no seu MySQL (pelo phpMyAdmin, por exemplo).
* Abra o arquivo `.env` e ajuste a variável de conexão para refletir a senha do seu banco de dados:
`DATABASE_URL="mysql://root:SUA_SENHA@localhost:3306/unifecaf_flix"`

**4. Gere o Prisma Client e rode a aplicação:**
```bash
npx prisma generate
npm run dev
```

*O servidor iniciará na porta `8080`.*

---
Feito com 💻 por Leon Hauck.
