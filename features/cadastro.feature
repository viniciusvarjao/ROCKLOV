#language: pt

Funcionalidade: Cadastro
Sendo un músico que possui equipamentos musicais
Quero fazer o neu cadastro no RockLov
Para que eu possa disponibilizá-los para locação

@cadastro
Cenario: Fazer cadastro

    Dado que acesso a página de cadastro
    # Quando submeto o meu cadastro completo
    Quando submeto o seguinte formulário de cadastro:
        |nome          |email                     |senha |
        |Vinicius Gomes|viniciusvarjao@hotmail.com|123456|
    Então sou redirecionado para o Dashboard

Esquema do Cenario: Tentativa de Cadastro

    Dado que acesso a página de cadastro
    Quando submeto o seguinte formulário de cadastro:
        |nome          |email         |senha        |
        |<nome_input>  |<email_input> |<senha_input>|
    Então vejo a mensagem de alerta: "<mensagem_output>"

    Exemplos:
    |nome_input     |email_input               |senha_input|mensagem_output                 |
    |               |viniciusvarjao@hotmail.com|123456     |Oops. Informe seu nome completo!|
    |Vinicius Gomes |                          |123456     |Oops. Informe um email válido!  |
    |Vinicius Gomes |viniciusvarjao.hotmail.com|123456     |Oops. Informe um email válido!  |
    |Vinicius Gomes |viniciusvarjao*hotmail.com|123456     |Oops. Informe um email válido!  |
    |Vinicius Gomes |viniciusvarjao@hotmail.com|           |Oops. Informe sua senha secreta!|


# @tentativa
# Cenario: Submeter cadastro sem o nome

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome          |email                     |senha |
#         |              |viniciusvarjao@hotmail.com|123456|
#     Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

# @tentativa
# Cenario: Submeter cadastro sem o email

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome          |email                     |senha |
#         |Vinicius Gomes|                          |123456|
#     Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

# @tentativa
# Cenario: Submeter cadastro com email incorreto

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome          |email                     |senha |
#         |Vinicius Gomes|viniciusvarjao.hotmail.com|123456|
#     Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

# @tentativa
# Cenario: Submeter cadastro sem a senha

#     Dado que acesso a página de cadastro
#     Quando submeto o seguinte formulário de cadastro:
#         |nome          |email                     |senha |
#         |Vinicius Gomes|viniciusvarjao@hotmail.com|      |
#     Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"
