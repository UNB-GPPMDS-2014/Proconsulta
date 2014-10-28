#language: pt

Funcionalidade: Abrir página de cadastrar
	Para poder utilizar as funcionalidades do aplicativo
	Como usuário
	Quero acessar a página para realizar meu cadastro

  	Cenário: Carregar página de cadastrar
    Ao carregar página de cadastro, é mostrado um formulário de cadastro para o usuário 

    Quando eu clico no link "Registrar"
    Entao vejo o formulario de cadastro


    Cenário: Cadastrar novo usuário
    Ao preencher informações do novo usuário e salvá-las, novo usuário é cadastrado.

    Quando eu preencho o campo "Nome" com "Eduardo"
    E preencho o campo "E-mail" com "eduardo@hotmail.com"
    E preencho o campo "Senha" com "123456"
    E preencho o campo "Repetir" com "123456"
    E preencho o campo "Estado" com "DF"
    E pressionar o botão "Registrar conta"
    Entao vejo "Nome: Eduardo"
    E vejo "Estado: DF"
    E vejo "E-Mail: moreira.edu@hotmail.com"


    Cenário: Cadastrar usuário com senhas incompatíveis
    Ao preencher informações do novo usuário com senhas diferentes, usuário não deve ser cadastrado.

    Quando eu preencho o campo "Nome" com "Eduardo"
    E preencho o campo "E-mail" com "eduardo@hotmail.com"
    E preencho o campo "Senha" com "123456"
    E preencho o campo "Repetir" com "654321"
    E preencho o campo "Estado" com "DF"
    E pressionar o botão "Registrar conta"
    Entao vejo "passwords don't match"
