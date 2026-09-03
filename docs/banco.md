USUARIO
- id
- nome
- telefone
- email
- usuario
- senha
- tipo
- ativo

CLIENTE
- id
- nome
- telefone
- email
- endereco
- observacao

SERVICO
- id
- descricao
- endereco
- data
- horario
- status
- cliente_id
- preco_estimado
- preco_final
- data_solicitacao
- observacao_extra
- motivo_cancelamento

SERVICO_FUNCIONARIO
- servico_id
- funcionario_id
- ativo

OBSERVACAO
- id
- servico_id
- autor_id
- texto
- data_hora