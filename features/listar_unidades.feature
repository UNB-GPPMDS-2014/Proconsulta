#language: pt

Funcionalidade: Visualizar lista de unidades do Procon
	Para saber informações sobre as unidades do PROCON
	Como usuario
	Quero visualizar essa lista


  	Cenário: Carregar página da lista de unidades do PROCON
    	Ao carregar página da lista de unidades, é mostrada uma lista de unidades do PROCON

	Dado que eu estou na homepage
    	Quando eu clico no link "Unidades do Procon"
    	Entao vejo a lista de unidades
	E vejo filtro de pesquisa por estado


	Cenário: Visualizar de informações de uma unidade
	Ao clicar no ID de uma unidade, é possível visualizar os dados referentes a ela

	Dado que existe uma unidade do procon de ID "250"
	E que eu estou na pagina da lista de unidades do procon
	Quando eu clico no link "250"
	Entao sou redirecionado para a pagina dessa Unidade Procon
	E vejo os dados dessa unidade


	Cenário: Pesquisar lista de unidades do Procon por estado
	Através da escolha de um estado, é mostrada uma lista com as unidades referentes àquele estado

	Dado que eu estou na pagina da lista de unidades do procon
	Quando eu escolho a opção "DF" na lista "estados"
	E clico no botão "Buscar"
	Entao posso ver unidades presentes no DF

