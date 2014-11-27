
#language: pt

Funcionalidade: Realizar cadastro de usuário
	Para poder realizar login e utilizar todas as funcionalidades do aplicativo
	Como usuário
	Quero realizar meu cadastro



  	Cenário: Carregar página de cadastrar
    	Ao carregar página de cadastro, é mostrado um formulário de cadastro para o usuário 

	Dado que eu estou na homepage
    	Quando eu clico no link "Registrar"
    	Entao vejo o formulario de cadastro


    	Cenário: Cadastrar novo usuário
    	Ao preencher informações do novo usuário e salvá-las, um novo usuário é cadastrado.

    	Dado que eu estou na pagina do formulario de cadastro
    	E preencho o campo "Nome" com "Eduardo"
    	E preencho o campo "E-mail" com "eduardo@hotmail.com"
    	E preencho o campo "Senha" com "123456"
    	E preencho o campo "Repetir" com "123456"
    	Quando clico no botão "Registrar conta"
    	Entao sou redirecionado para a pagina "/users/1"
    	Entao vejo o nome do usuario


    	Cenário: Cadastrar usuário com senhas incompatíveis
    	Ao preencher informações do novo usuário com senhas diferentes, usuário não deve ser cadastrado.

    	Dado que eu estou na pagina do formulario de cadastro
    	E preencho o campo "Nome" com "Eduardo"
    	E preencho o campo "E-mail" com "eduardo@hotmail.com"
    	E preencho o campo "Senha" com "123456"
    	E preencho o campo "Repetir" com "654321"
    	Quando clico no botão "Registrar conta"
    	Entao erros aparecem
