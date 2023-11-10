#language: pt
#created by eduardo.araujo at 08/11/2023

  Funcionalidade: Tela de login

    @returns_sucess
    Esquema do Cenário: Realizar login com sucesso
      Dado que estou no site do orange
      Quando eu preencher os campos de login com os seguintes dados
      |  Username  |   Password   |
      | <Username> |  <Password>  |
      Então devo ser direcionado a página inicial
    Exemplos:
      |  Username  |   Password  |
      |   Admin    |   admin123  |

    @invalid_credentials
    Esquema do Cenário: Realizar login com credenciais inválidas e retornar erro
      Dado que estou no site do orange
      Quando eu preencher os campos de login com os seguintes dados
        |  Username  |   Password   |
        | <Username> |  <Password>  |
      Então devo visualizar a mensagem de erro para credenciais invalidas "Invalid credentials"
      Exemplos:
        |  Username  |   Password  |
        |   asdad    |   dsdsdddd  |

     @username_required
     Esquema do Cenário: Realizar login inserindo apenas username e retornar erro
       Dado que estou no site do orange
       Quando eu preencher os campos de login com os seguintes dados
         |  Username  |   Password   |
         | <Username> |  <Password>  |
       Então devo visualizar a mensagem de erro para campos requeridos "Required"
     Exemplos:
         |  Username  |   Password  |
         |   asdad    |             |

     @password_required
     Esquema do Cenário: Realizar login inserindo apenas password e retornar erro
       Dado que estou no site do orange
       Quando eu preencher os campos de login com os seguintes dados
         |  Username  |   Password   |
         | <Username> |  <Password>  |
       Então devo visualizar a mensagem de erro para campos requeridos "Required"
      Exemplos:
         |  Username  |   Password  |
         |            |     asdd    |

      @fogot_password
      Cenário: Realizar fluxo de Esqueci a Senha
        Dado que estou no site do orange
        Quando eu clicar no Forgot Password
        Então devo solicitar o reset password
        E receber um link no email cadastrado

      @cancel_fogot_password
      Cenário: Cancelar fluxo de Esqueci a Senha
        Dado que estou no site do orange
        Quando eu clicar no Forgot Password
        E clicar no cancelar
        Então devo voltar a pagina de login

    @logout
    Cenario: Realizar logout
      Dado que estou logado no site do orange
      Quando eu realizar o logout
      Então devo voltar a pagina de login