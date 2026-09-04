# Revisão da Sprint 2: Funcionalidades Core e Fluxo de Dados

## Visão Geral
A segunda sprint concentrou-se em transformar a infraestrutura básica em um produto funcional. O foco foi a implementação do Dashboard e do módulo de comunicação (Chat), que são o coração da interação entre as vítimas e a equipe de suporte.

## Objetivos Alcançados
- [x] **Hub de Navegação**: O Dashboard foi implementado com sucesso, servindo como ponto de partida eficiente para o usuário.
- [x] **Módulo de Chat**: Desenvolvimento da lista de conversas e da tela de mensagens, permitindo o fluxo de comunicação necessário para o registro de casos.
- [x] **Persistência de Dados**: Criação do esquema de tabelas no PostgreSQL, permitindo que as informações de usuários e chats sejam armazenadas de forma relacional e segura.
- [x] **Conectividade**: Integração efetiva entre o cliente Flutter e a API Express, validando o fluxo de requisições HTTP.

## Análise de Valor
O aplicativo deixou de ser um conjunto de telas estáticas para se tornar um sistema dinâmico. A capacidade de navegar entre chats e visualizar mensagens é o valor central entregue nesta etapa, aproximando o projeto da sua finalidade social.

## Lições Aprendidas
- O uso de `go_router` provou ser essencial para gerenciar a navegação complexa entre a lista de chats e os detalhes da conversa.
- A separação de ambientes (`environment.dart`) evitou erros de conexão ao alternar entre diferentes instâncias da API.

## Próximos Passos
- Refinar a UI/UX para maior acessibilidade.
- Implementar upload de imagens e anexos nas conversas.
- Explorar a integração com dados abertos do portal da transparência.
