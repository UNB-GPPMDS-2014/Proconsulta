#language: pt

Funcionalidade: Visualizar ranking de atendimentos do Procon
	Para poder ter conhecimento sobre os a qualidade de atendimentos nas unidades do Procon 
	Como usuario
	Quero poder visualizar o ranking de atendimentos do PROCON



	Cenário: carregar página de ranking
	Ao carregar a página de ranking, é mostrada uma lista rankeando os atendimentos do Procon

	Dado que eu estou na homepage
	Quando eu clico no link "Ranking de Unidades do Procon"
    	Entao vejo o ranking de atendimentos
	E vejo o filtro para pesquisa por estado