#language: pt

Funcionalidade: Acesso ao código do consumidor
	Para ter ciência de meus direitos e deveres como consumidor
	Como usuário
	Quero visualizar a página com os capítulos do código do consumidor


  	
  	Cenário: Carregar página do código do consumidor
    	Ao carregar página do código do consumidor, é mostrado o código do consumidor

    	Dado que eu estou na homepage
    	Quando eu clico no link "Legislação"
    	Entao vejo o codigo do consumidor
 

    	Cenário: Visualizar um capítulo específico do código
    	Ao selecionar um capítulo na árvore de opções, e selecionar um subtópico, é mostrado o conteúdo referente ao capitulo

   	Dado que eu estou na pagina da Legislacao
    	Quando eu clico no primeiro topico da arvore de opcoes
    	E clico no subtopico
    	Entao vejo o capitulo do codigo
