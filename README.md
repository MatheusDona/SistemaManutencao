# Sistema de Manutenção

Sistema web para gerenciamento de serviços de uma empresa de manutenção residencial.

## Objetivo

O sistema tem como objetivo centralizar o gerenciamento de clientes, funcionários e serviços, substituindo o controle realizado por planilhas e conversas no WhatsApp.

## Funcionalidades

### Administrador

* Gerenciar clientes
* Gerenciar funcionários
* Criar e editar serviços
* Associar funcionários aos serviços
* Alterar o status dos serviços
* Consultar histórico de serviços
* Filtrar serviços
* Visualizar observações
* Acompanhar informações gerais dos serviços

### Funcionário

* Realizar login
* Visualizar serviços atribuídos
* Consultar informações do cliente e do serviço
* Alterar o status do serviço
* Adicionar observações

## Tecnologias

**Backend**

* Python
* FastAPI

**Banco de dados**

* PostgreSQL

**Frontend**

* HTML
* CSS
* JavaScript

## Estrutura do projeto

```text
sistema-manutencao/
├── backend/
├── frontend/
├── database/
│   └── schema.sql
├── docs/
│   ├── banco.md
│   └── requisitos.md
├── .gitignore
└── README.md
```

## Status

🚧 Em desenvolvimento.

## Escopo inicial

O projeto inicialmente não contempla:

* Login de clientes
* Aplicativo mobile nativo
* Notificações por WhatsApp
* Notificações por e-mail
* Sistema financeiro completo
* Emissão de notas fiscais
