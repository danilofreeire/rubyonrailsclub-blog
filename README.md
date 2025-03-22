# 📝 Blog App com Ruby on Rails

Este é um projeto de blog desenvolvido com **Ruby on Rails**, com foco em funcionalidades completas de administração, criação de conteúdo e interação com usuários.

## 🚀 Funcionalidades

- Sistema de autenticação para administradores e usuários
- CRUD de artigos, autores e categorias
- Upload de imagens com ActiveStorage
- Comentários e curtidas em artigos
- Interface de administração com layout moderno e responsivo

## 🛠️ Tecnologias utilizadas

- Ruby on Rails
- PostgreSQL
- TTY::Spinner
- ActiveStorage
- Faker


## ⚙️ Instalação

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/nome-do-repositorio.git
cd nome-do-repositorio
```

Instale as dependências:

```bash
bundle install
```

Configure o banco de dados:

```bash
rails db:create
rails db:migrate
```

## 🧪 Popular com dados fictícios

Este projeto inclui uma task personalizada para resetar o banco e popular com dados aleatórios de forma rápida.

### 🔄 Reset com dados prontos

Execute o seguinte comando:

```bash
rails dev:reset
```

Essa task realiza:

- Reset e criação do banco de dados
- Execução das migrações
- Criação de categorias com imagens
- Cadastro de autores com avatar e redes sociais
- Geração de artigos com imagem de capa
- Criação de usuários e comentários aleatórios


## 🔐 Variáveis de ambiente

Crie um arquivo `.env` com a variável:

```env
DEFAULT_PASSWORD=12345678
```

Use a gem `dotenv-rails` para carregar as variáveis localmente (caso necessário).

## 🧑‍💻 Modo de desenvolvimento

Inicie o servidor:

```bash
rails server
```

Acesse no navegador:

```
http://localhost:3000
```



