# Sprint 2: Funcionalidades Core e Fluxo de Dados

## Objetivo
Implementar os principais módulos funcionais do aplicativo, focando na interação do usuário, persistência de dados e na integração entre o cliente mobile e o backend.

## Conquistas

### 1. Dashboard do Usuário e Navegação
- **Tela de Dashboard**: Criação de um hub central para o usuário acessar as principais funcionalidades.
- **Itens de Navegação**: Implementação do `nav_items.dart` para gerenciar a barra de navegação inferior e o mapeamento de rotas.
- **Roteamento Integrado**: Refinamento do `app_router.dart` para lidar com fluxos de navegação complexos entre o dashboard e as telas de funcionalidades.

### 2. Módulos de Chat e Comunicação
- **Tela de Lista de Chats**: Desenvolvimento de uma visualização para listar conversas em andamento.
- **Tela de Detalhes do Chat**: Implementação da visualização detalhada da conversa, permitindo que os usuários enviem e recebam mensagens.
- **Comunicação em Tempo Real**: Base para a interface de comunicação entre vítimas e equipe de suporte.

### 3. Desenvolvimento da API de Backend
- **Endpoints da API**: Desenvolvimento dos endpoints iniciais em `index.ts` para lidar com requisições do cliente mobile.
- **Esquema do Banco de Dados**: Criação do `001-create-tables.sql` para definir a estrutura relacional de usuários, casos e mensagens.
- **Integração da API**: Conexão do serviço `api.dart` do mobile com o backend Express implantado.

## Desafios e Soluções
- **Gerenciamento de Estado**: Solução para a persistência do estado de navegação ao mover-se entre a lista de chats e os detalhes.
- **Configuração de Ambiente**: Implementação do `environment.dart` para permitir a troca fácil entre URLs de API de desenvolvimento e produção.
