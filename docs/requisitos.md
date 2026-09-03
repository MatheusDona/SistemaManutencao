1- Objetivo do sistema
    Um sistema para uma empresa de serviços de manutençã residencial, onde o admin precisa conseguir cadastrar os clientes, cadastrar os funcionários e controlar os serviços realizados.

2- Tipos de usuários
    Chehe(Admin)
    Funcionario(Admin que cria)

3- Funcionalidades do administrador
    Cadastrar funcionários, clientes e desativar eles. Conseguir lançar serviços onde escolhe qual funcionário(s) vai realizar o serviço, Editar serviço, acompanhar todos os serviços, e ter histórico de cada cliente.

4- Funcionalidades do funcionário
    O funcionário pode alterar status do serviço e tem que ver qual serviço foi atribuido para ele com endereço, data, horario, visualizar telefone do cliente e nome do cliente e se tiver parceiro com qual.

5- Dados de Cliente
    Nome completo
    Telefone
    E-mail
    Endereço
    Obs extra

6- Dados de Funcionário
    Login(Usuario e senha)
    ativo ou inativo
    Nome
    telefone
    e-mail

7- Dados de Serviço
    O que deve ser feito
    Endereço do serviço
    Data do serviço 
    Hora do serviço
    Quem concluiu o serviço
    Preço estimativo do serviço
    Preço final do serviço
    obs extra serviço

8- Regras de negócio
    Um serviço pode ter vários funcionários.
    Um funcionário pode participar de vários serviços.
    Funcionário não pode editar clientes.
    Funcionário só pode visualizar seus próprios serviços.
    Admin pode visualizar todos os serviços.
    Serviço concluído não pode ser apagado.
    Serviço cancelado permanece no histórico.
    Serviço cancelado precisa de motivo.
    Funcionário desativado não perde o histórico.

9- Fora do MVP:
    Cliente solicitar serviço diretamente pelo sistema.
    Notificação por WhatsApp.
    Notificação por e-mail.
    Sistema financeiro completo.
    Emissão de notas fiscais.
    Aplicativo próprio para celular.
