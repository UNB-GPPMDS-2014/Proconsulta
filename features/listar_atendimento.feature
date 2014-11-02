#language: pt

Funcionalidade: Abrir página de atendimentos
	Para poder visualizar os atendimentos realizados pelo PROCON
    Como usuário
	Quero acessar a página de atendimentos

  	Cenário: Carregar página de atendimentos
    Ao carregar página de atendimentos, é mostrada uma lista com os atendimentos do PROCON

    Dado que eu estou na homepage
    Quando eu clico no link "Atendimentos"
    Entao vejo a lista de atendimentos
    Entao vejo os filtros para pesquisar atendimento


    Cenário: Pesquisar atendimentos inexistentes por filtros
    Ao buscar atendimentos por meio de filtros, é mostrada uma lista vazia

    Dado que eu estou na homepage
    Quando eu clico no link "Atendimentos"
    E clico no filtro "Data"
    E preencho o campo "campo" com "2010"
    E clico no link "Buscar"
    Entao vejo a lista de atendimentos com os atendimentos ""


    Cenário: Pesquisar atendimentos por filtros
    Ao buscar atendimentos por meio de filtros, é mostrada uma lista com os atendimentos filtrados.

    Dado que eu estou na homepage
    Quando eu clico no link "Atendimentos"
    Quando eu preencho "2012" em "Ano"
    E aperto "Buscar"
    Entao vejo a lista de atendimentos com um atendimento:
    |id     |uf_procon  |
    |756    |GO         |


    Cenário: Visualizar profile de um atendimento selecionado
    Ao clicar em um atendimento, é mostrada as informações do atendimento selecionado

    Dado que eu estou na homepage
    E existe um atendimento
    Quando eu clico no link "Atendimentos"
    E clico no link "50"
    Entao vejo dados deste atendimento