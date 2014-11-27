#language: pt

Funcionalidade: Visualizar lista de atendimentos do PROCON
	Para saber quais atendimentos realizados pelo PROCON
   	Como usuário
	Quero visualizar a lista de atendimentos do PROCON



  	Cenário: Carregar página de atendimentos
    	Ao carregar página de atendimentos, é mostrada uma lista com os atendimentos do PROCON

	Dado que eu estou na homepage
    	Quando eu clico no link "Atendimentos"
    	Entao vejo a lista de atendimentos
	E vejo os filtros para pesquisar atendimento


    	Cenário: Pesquisar atendimentos inexistentes por filtros
    	Ao buscar atendimentos por meio de filtros, é mostrada uma lista vazia

    	Dado que eu estou na pagina de listar atendimento
    	Quando preencho o campo "Ano" com "2010"
    	E clico no botão "Pesquisar"
    	Entao vejo a lista de atendimentos com os atendimentos vazios


    	Cenário: Pesquisar atendimentos por filtro UF
    	Ao buscar atendimentos por meio do filtro UF, é mostrada uma lista com os atendimentos filtrados para determinada unidade federativa.

    	Dado que eu estou na pagina de listar atendimento
    	Quando preencho o campo "UF" com "DF"
    	E clico no botão "Pesquisar"
    	Entao vejo atendimentos ocorridos no DF


	Cenário: Pesquisar atendimentos por filtro Região
    	Ao buscar atendimentos por meio do filtro Região, é mostrada uma lista com os atendimentos filtrados para determinada Região.

    	Dado que eu estou na pagina de listar atendimento
    	Quando preencho o campo "Região" com "Norte"
    	E clico no botão "Pesquisar"
    	Entao vejo atendimentos ocorridos na regiao Norte


	Cenário: Pesquisar atendimentos por filtro Ano
    	Ao buscar atendimentos por meio do filtro Ano, é mostrada uma lista com os atendimentos filtrados para determinada ANo.

    	Dado que eu estou na pagina de listar atendimento
    	Quando preencho o campo "Ano" com "2012"
    	E clico no botão "Pesquisar"
    	Entao vejo atendimentos ocorridos no ano 2012


    	Cenário: Visualizar profile de um atendimento selecionado pelo ID
    	Ao clicar no ID de um atendimento, são mostradas as informações do atendimento selecionado

            Dado que existe um atendimento de id "50"
            E que eu estou na pagina de listar atendimento
  	Quando clico no link "50"
    	Entao vejo dados deste atendimento
