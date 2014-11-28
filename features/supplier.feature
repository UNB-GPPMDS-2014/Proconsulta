
#language: pt

Funcionalidade: Visuzalizar lista de fornecedores
	Para poder visualizar a lista de fornecedores
   	Como usuário
	Quero acessar a página de fornecedores



  	Cenário: Carregar página de fornecedores
    	Ao carregar página de fornecedores, é mostrada uma lista com os fornecedores

    	Dado que eu estou na homepage
    	Quando eu clico no link "Fornecedores"
    	Entao vejo a lista de fornecedores
    	E vejo os filtros para pesquisar fornecedor


	Cenário: Pesquisar fornecedores inexistentes por filtros
    	Ao buscar fornecedor por meio de filtros, é mostrada uma lista vazia

    	Dado que eu estou na pagina de fornecedores
    	E preencho o campo "Nome" com "LIGHTNER"
    	Quando clico no botão "Pesquisar"
    	Entao vejo a lista de fornecedores com os fornecedores vazios


    	Cenário: Pesquisar fornecedores por filtro Nome
    	Ao buscar atendimentos por meio do filtro Nome, é mostrada uma lista com os fornecedores com o nome pesquisado.

    	Dado que eu estou na pagina de fornecedores
    	E existe um fornecedor
    	E preencho o campo "Nome" com "SAMSUNG"
    	Quando clico no botão "Pesquisar"
    	Entao vejo o fornecedor pelo nome


	Cenário: Pesquisar fornecedores por filtro de CNPJ
    	Ao buscar atendimentos por meio do filtro CNPJ, é mostrada o fornecedor com o CNPJ procurado.

    	Dado que eu estou na pagina de fornecedores
    	E existe um fornecedor
    	E preencho o campo "CNPJ" com "04206050003015"
    	Quando clico no botão "Pesquisar"
    	Entao vejo o fornecedor pelo Cnpj


 	Cenário: Visualizar profile de um fornecedor selecionado
    	Ao clicar em um fornecedor, é mostrada as informações do fornecedor selecionado

    	Dado que eu estou na pagina de fornecedores
    	E existe um fornecedor
    	Quando eu clico no link "BGN"
    	Entao vejo dados deste fornecedor




