-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS unifecaf_flix;
USE unifecaf_flix;

-- Criação da Tabela Filme
CREATE TABLE IF NOT EXISTS `Filme` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `sinopse` TEXT NULL,
  `data_lancamento` DATETIME NULL,
  `foto_capa` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserção de Dados Fictícios (Mock Data) para testes da API
INSERT INTO `Filme` (`nome`, `sinopse`, `data_lancamento`, `foto_capa`) VALUES
('Vingadores: Ultimato', 'Os Vingadores restantes devem encontrar uma maneira de recuperar seus aliados para um confronto épico com Thanos.', '2019-04-25 00:00:00', 'https://linkdafoto.com/vingadores.jpg'),
('O Senhor dos Anéis: O Retorno do Rei', 'Gandalf e Aragorn lideram o Mundo dos Homens contra o exército de Sauron para desviar o olhar do Senhor das Trevas de Frodo e Sam.', '2003-12-25 00:00:00', 'https://linkdafoto.com/senhordosaneis.jpg'),
('Matrix', 'Um hacker de computador aprende com rebeldes misteriosos sobre a verdadeira natureza de sua realidade e seu papel na guerra contra seus controladores.', '1999-05-21 00:00:00', 'https://linkdafoto.com/matrix.jpg'),
('Interestelar', 'Uma equipe de exploradores viaja através de um buraco de minhoca no espaço em uma tentativa de garantir a sobrevivência da humanidade.', '2014-11-06 00:00:00', 'https://linkdafoto.com/interestelar.jpg'),
('A Origem', 'Um ladrão que rouba segredos corporativos através do uso da tecnologia de compartilhamento de sonhos recebe a tarefa inversa de plantar uma ideia na mente de um C.E.O.', '2010-08-06 00:00:00', 'https://linkdafoto.com/origem.jpg'),
('O Poderoso Chefão', 'O patriarca de uma dinastia do crime organizado transfere o controle de seu império clandestino para seu filho relutante.', '1972-03-24 00:00:00', 'https://linkdafoto.com/poderoso_chefao.jpg'),
('Clube da Luta', 'Um trabalhador de escritório insone e um fabricante de sabonetes com atitude formam um clube de luta clandestino que evolui para muito mais.', '1999-10-29 00:00:00', 'https://linkdafoto.com/clube_luta.jpg'),
('Pulp Fiction: Tempo de Violência', 'As vidas de dois assassinos da máfia, um boxeador, um gângster e sua esposa, e um par de bandidos de restaurante se entrelaçam em quatro contos de violência e redenção.', '1994-10-14 00:00:00', 'https://linkdafoto.com/pulp_fiction.jpg'),
('Homem-Aranha: Sem Volta para Casa', 'Com a identidade do Homem-Aranha revelada, Peter pede ajuda ao Doutor Estranho. Quando um feitiço dá errado, inimigos perigosos de outros mundos começam a aparecer.', '2021-12-16 00:00:00', 'https://linkdafoto.com/homem_aranha.jpg'),
('Coringa', 'Em Gotham City, o comediante Arthur Fleck, mentalmente problemático, é desconsiderado e maltratado pela sociedade, iniciando uma espiral descendente de revolução e crimes sangrentos.', '2019-10-03 00:00:00', 'https://linkdafoto.com/coringa.jpg');
