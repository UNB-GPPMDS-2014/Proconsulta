#language: pt

Funcionalidade: Acesso ao FAQ - Perguntas Mais Frequentes
	Para poder solucionar dúvidas a respeito de leis, direitos e PROCON
	Como usuário
	Quero acessar a página de perguntas frequentes


  	
  	Cenário: Carregar página de faq
    	Ao carregar página de faq, é mostrada uma lista com as perguntas

	Dado que eu estou na homepage
    	Quando eu clico no link "FAQ"
    	Entao vejo a lista de perguntas
 

	Cenário: Visualizar resposta de uma pergunta
    	Ao selecionar um tópico e em uma pergunta, é mostrada a resposta para essa pergunta

	Dado que eu estou na pagina do FAQ
	E clico no topico "Ouvidoria"
    	Quando eu clico na primeira pergunta 
    	Entao vejo sua resposta
