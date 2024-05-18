# Blog's API

* Repositório criado para estudo da linguagem TypeScript de uma forma mais prática

* Tecnologias usadas: Node, TypeScript, Postgres, Express

* Esse projeto tem como intuito simular o backend de uma aplicação de um blog onde podem ser cadastrados Usuários e Posts.

### Avisos:
 * É necessário ter instalado o Node.js e o Docker para conseguir rodar essa aplicação

### Etapas para rodar a aplicação:
* 1°) Clone o projeto utilizando o comando:
  - `git clone https://github.com/Itor-Carlos/desafio-blog.git`
* 2°) Utilize o comando `yarn` dentro da pasta que surgiu no passo anterior
* 3°) Com o docker já instalado rode o comando seguinte para criar um container Postgres (caso já tenha, esse passo pode ser ignorado):
  - `docker run --name pg -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -p 5432:5432 -d postgres`
  - Tanto o user quando o password podem ser alterados (mas também terá que alterar um arquivo mais para a frente)
