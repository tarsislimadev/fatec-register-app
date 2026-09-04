# Sprint 1: Fundação e Infraestrutura Básica

## Objetivo
Estabelecer a infraestrutura central do aplicativo Fatec Women, com foco na configuração inicial do cliente mobile, API de backend e ambiente de banco de dados.

## Conquistas

### 1. Estruturação do Projeto
- **Aplicativo Mobile**: Inicialização de um projeto Flutter com arquitetura limpa.
- **API de Backend**: Configuração de um servidor Express.js com TypeScript para garantir segurança de tipos e escalabilidade.
- **Banco de Dados**: Configuração de um ambiente de banco de dados PostgreSQL utilizando Docker.
- **Conteinerização**: Criação do `docker-compose.yaml` para orquestrar os serviços de API e Banco de Dados, garantindo consistência no desenvolvimento local.

### 2. UI/UX Inicial do Mobile
- Implementação do `AppScaffold` base para manter um layout consistente em todo o aplicativo.
- Desenvolvimento da **Tela de Boas-vindas (Landing Screen)** para introduzir os usuários ao aplicativo.
- Criação das telas de **Login** e **Cadastro (Sign-up)** para gerenciar a autenticação de usuários.
- Integração do `go_router` para navegação declarativa entre as telas.

### 3. Serviços Core e Tema
- **Tema do App**: Definição da identidade visual em `app_theme.dart`, assegurando que cores e tipografia estejam alinhadas ao propósito do projeto.
- **Serviço de Armazenamento**: Implementação do `flutter_secure_storage` para persistir dados sensíveis do usuário localmente.
- **Serviço de API**: Estabelecimento do serviço base `api.dart` para lidar com requisições HTTP ao backend.

## Stack Técnica
- **Frontend**: Flutter (Dart)
- **Backend**: Node.js, Express, TypeScript
- **Banco de Dados**: PostgreSQL
- **DevOps**: Docker, Docker Compose
