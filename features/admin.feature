#language: pt
#created by eduardo.araujo at 08/11/2023

  Funcionalidade: Tela de Gerenciamento de Administradores

    @create_new_admin
    Esquema do Cenário: Cadastrar um novo Administrador e validar se houve sucesso
      Dado que estou logado no site do orange
      Quando eu cadastrar um novo adminstrador
        |  Employee Name  |   Username   |   Password  |
        | <Employee Name> |  <Username>  |  <Password> |
      Então devo visualizar a mensagem de ação bem sucedida
    Exemplos:
        |   Employee Name  |  Username    |   Password   |
        |      a           |   abdullah   |  cuba885544  |

    @list_new_admin
    Esquema do Cenário: Buscar administrador cadastrado
      Dado que estou logado no site do orange
      Quando eu buscar pelo administrador
        |   Username   |
        |  <Username>  |
      Então devo visualizar o cadastro na lista de administradores
        |   Username   |
        |  <Username>  |
      Exemplos:
        |   Username   |
        |   abdullah   |

    @delete_new_admin
    Esquema do Cenario: Apagar administrador cadastrado
      Dado que estou logado no site do orange
      Quando eu deletar o administrador
        |   Username   |
        |  <Username>  |
      Então o cadastro deve ser deletado com sucesso
    Exemplos:
        |   Username   |
        |   abdullah   |