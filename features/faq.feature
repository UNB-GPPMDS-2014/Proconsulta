#language: pt

Funcionalidade: Abrir do página do FAQ
	Para poder visualizar as perguntas frequentes
	Como usuário
	Quero acessar a página do faq


  	Cenário: Carregar página de fornecedores
    Ao carregar página de fornecedores, é mostrada uma lista com os fornecedores
	
	Dado que eu estou na homepage
    Quando eu clico no link "FAQ"
    Entao vejo a lista de perguntas
 
    Cenário: Visualizar resposta de uma pergunta
    Ao selecionar uma pergunta, é mostrada a resposta para essa pergunta.

    Quando eu clico na pergunta "Quais órgãos estão subordinados à essa Lei?"
    Entao vejo a resposta "Os órgãos da administração direta do Poder Executivo do Distrito Federal, a Câmara Legislativa do Distrito Federal e o Tribunal de Contas do Distrito Federal. As autarquias, fundações públicas, empresas públicas, sociedades de economia mista e demais entidades controladas direta ou indiretamente pelo Distrito Federal. No que couber, às entidades privadas sem fins lucrativos que recebam, para realização de ações de interesse público, recursos públicos diretamente do orçamento ou mediante subvenções sociais, contrato de gestão, termo de parceria, convênios, acordos, ajustes ou outros instrumentos congêneres."
