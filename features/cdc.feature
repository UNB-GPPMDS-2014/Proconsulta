#language: pt

Funcionalidade: Abrir do página do código do consumidor
	Para poder visualizar o código
	Como usuário
	Quero acessar a página do código do consumidor


  	
  	Cenário: Carregar página de cdc
    Ao carregar página do cdc, é mostrado o cdc

	Dado que eu estou na homepage
    Quando eu clico no link "Legislação"
    Entao vejo o codigo do consumidor
 
    Cenário: Visualizar um capitulo especifico
    Ao selecionar um capitulo na arvore, é mostrado capitulo referente

	Dado que eu estou na homepage
 	  Quando eu clico no link "Legislação"
    E eu clico na arvore
    Entao vejo o capitulo
