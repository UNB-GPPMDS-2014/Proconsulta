#language: pt

Funcionalidade: Logar
	Para poder utilizar as todas as funcionalidades do aplicativo
	Como usuario
	Quero poder realizar login no aplicativo


	Cenário: carregar pagina de login
	Ao carregar pagina de login, deve aparecer um formulario de login

	Dado que eu estou na homepage
	Quando eu clico no link "Login"
   	Então vejo o formulario de login


	Cenário: login mal-sucedido 
	Verificar se o login foi realizado com dados incorretos
	
	Dado que eu estou na pagina de login
	Quando preencho informacao invalida
	Entao vejo o texto "Combinacao invalida de email e password."
	

	Cenário: login bem sucedido
	Verificar se o login foi realizado com dados corretos
  
	Dado que eu estou na pagina de login
	E possuo uma conta 
	Quando submeto informacoes validas 
	Entao sou redirecionado para a pagina "/users/1"
	Entao vejo o texto "Nome"

	
       
