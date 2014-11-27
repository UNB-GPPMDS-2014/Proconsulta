#language: pt

Funcionalidade: Avaliar unidades do PROCON
	Para poder avaliar determinada unidade do Procon
	Como usuario
	Quero poder acessar lista de unidades do PROCON 



	Cenário: Abrir página de avaliação sem estar logado
	Ao usuário tentar abrir avaliação de unidades do PROCON sem estar logado, o usuário não poderá avaliar unidade

	Dado que eu estou na homepage
    	Quando eu clico no link "Avaliar Procon"
    	Entao vejo o texto "Necessario estar logado para realizar avaliacao" 


	Cenário: Abrir página de avaliação com usario logado
	Ao usuário tentar abrir avaliação de unidades do PROCON e está logado, o mesmo poderá avaliar unidade

	Dado que eu estou na homepage
	E que eu estou logado
    	Quando eu clico no link "Avaliar Procon"
    	Entao sou redirecionado para a pagina de avaliacao de unidades


	Cenário: Visualizar informações de unidade do PROCON na região cadastrada pelo usuário
	Ao usuário selecionar o ID de uma unidade, ele pode visualizar informações a respeito dela
		
	Dado que eu estou na pagina de avaliacao de unidades
	E possuo uma conta
	#E clico no link "2318"
	#E sou redirecionado para a pagina com informacoes desta unidade
	#E posso ver informacoes relacionadas a ela
	#Quando eu escolho a opção "Péssimo" na lista "pontuacao"
	#E preencho o campo "Descrição" com "Atendimento horrível"
	#E clico no botão "Avaliar"
	#Entao vejo minha avaliacao
	


	