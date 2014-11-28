#language: pt

Funcionalidade: Manter usuário
	Para poder manter atualizado meu cadastro
	Como usuário
	Quero poder editar/excluir meu cadastro



  	Cenário: editar dados de usuário
    	Ao estar cadastrado, o usuário deve poder editar seus dados

	Dado que eu estou na pagina do formulario de cadastro
    	E preencho o campo "Nome" com "Eduardo"
    	E preencho o campo "E-mail" com "eduardo@hotmail.com"
    	E preencho o campo "Senha" com "123456"
    	E preencho o campo "Repetir" com "123456"
    	Quando clico no botão "Registrar conta"
    	Entao sou redirecionado para a pagina "/users/1"
	#E clico no botão "Editar"
	#E preencho o campo "Mudar E-mail" com "eduardo2@hotmail.com"
    	#E preencho o campo "Mudar Senha" com "123457"
	#E clico no link "Salvar mudanças"
	#Entao vejo o texto "Usuario editado com exito!"

	Cenário: excluir conta do usuário
    	Ao estar cadastrado, o usuário deve poder excluir sua conta
	
	Dado que eu estou na pagina do formulario de cadastro
    	E preencho o campo "Nome" com "Eduardo"
    	E preencho o campo "E-mail" com "eduardo@hotmail.com"
    	E preencho o campo "Senha" com "123456"
    	E preencho o campo "Repetir" com "123456"
    	Quando clico no botão "Registrar conta"
    	Entao sou redirecionado para a pagina "/users/1"
	#E clico no botão "Deletar"
	#Entao vejo o texto "Você tem certeza?"
	#E clico no botão "OK"
	#E sou redirecionado para a homepage
	
	
	


	
	



	
	
	
	
	



	
