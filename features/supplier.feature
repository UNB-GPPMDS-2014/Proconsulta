#language: pt

Funcionalidade: Abrir página de fornecedores
	Para poder visualizar a lista de fornecedores
    Como usuário
	Quero acessar a página de fornecedores

  	Cenário: Carregar página de fornecedores
    Ao carregar página de fornecedores, é mostrada uma lista com os fornecedores

    Dado que eu estou na homepage
    Quando eu clico no link "Fornecedores"
    Entao vejo a lista de fornecedores
    Entao vejo os filtros para pesquisar fornecedor


    Cenário: Pesquisar fornecedores inexistentes por filtros
    Ao buscar fornecedor por meio de filtros, é mostrada uma lista vazia

    Dado que eu estou na homepage
    Quando eu clico no link "Fornecedores"
    E clico no filtro "Nome"
    E preencho o campo "Busca Textual" com "UnB"
    E clico no botão "Buscar"
    Entao vejo a lista de fornecedores com os fornecedores vazios


    Cenário: Pesquisar fornecedores por filtro de nome
    Ao buscar atendimentos por meio do filtro, é mostrada uma lista com os fornecedores filtrados.

    Dado que eu estou na homepage
    Quando eu clico no link "Fornecedores"
    E existe um fornecedor
    E clico no filtro "Nome"
    E preencho o campo "Busca Textual" com "Tim"
    E clico no botão "Buscar"
    Entao vejo um fornecedor

Cenário: Pesquisar fornecedores por filtro de CNPJ
    Ao buscar atendimentos por meio do filtro, é mostrada uma lista com os fornecedores filtrados.

    Dado que eu estou na homepage
    Quando eu clico no link "Fornecedores"
    E existe um fornecedor
    E clico no filtro "CNPJ"
    E preencho o campo "Busca Textual" com "04206050003015"
    E clico no botão "Buscar"
    Entao vejo um fornecedor




