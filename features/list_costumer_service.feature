#language: pt

Funcionalidade: Abrir página de atendimentos
	Para poder visualizar os atendimentos realizados pelo PROCON
    Como usuário
	Quero acessar a página de atendimentos

  	Cenário: Carregar página de atendimentos
    Ao carregar página de atendimentos, é mostrada uma lista com os atendimentos do PROCON

    Quando eu clico no link "Atendimentos"
    Entao vejo a lista de atendimentos
    E vejo os filtros para pesquisar atendimento


    Cenário: Pesquisar atendimentos inexistentes por filtros
    Ao buscar atendimentos por meio de filtros, é mostrada uma lista vazia

    Quando eu preencho "2010" em "Ano"
    E aperto "Buscar"
    Entao vejo a lista de atendimentos com os atendimentos ""