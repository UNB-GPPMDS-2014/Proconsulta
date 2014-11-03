#language: pt

Funcionalidade: Abrir página de fornecedores
	Para poder visualizar os fornecedores existentes
    Como usuário
	Quero acessar a página de fornecedores

  	Cenário: Carregar página de fornecedores
    Ao carregar página de fornecedores, é mostrada uma lista com os fornecedores existentes

    Dado que eu estou na homepage
    Quando eu clico no link "Fornecedores"
    Entao vejo a lista de fornecedores
    E vejo os filtros para pesquisar fornecedores

    Cenário: Pesquisar fornecedor pelo nome
    Ao pesquisar fornecedor pelo nome, é mostrada uma lista com os fornecedores filtrados

    Dado que eu estou na 
    Quando eu preencho o campo "pesquisa" com "honda"
    E clico no botão "Buscar"
    Entao vejo "07431634000148"