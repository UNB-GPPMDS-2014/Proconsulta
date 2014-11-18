#language: pt

Funcionalidade: Avaliar
	Para poder avaliar determinada unidade do Procon
	Como usuario
	Quero poder avaliar unidades no aplicativo

	Cenário: Avaliação disponível para usuário logado que teve como ultima página a página de avaliar

	Dado que eu estou logado
	E estou na pagina "/avaliar"
	E existe uma unidade Procon
	Quando eu clico no profile de tal unidade
	Entao sou redirecionado para a pagina dessa Unidade Procon
	E vejo os campos para avaliar essa Unidade do Procon
