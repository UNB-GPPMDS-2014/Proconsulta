# encoding: utf-8

#common methods
include SessionsHelper

Quando(/^eu escolho a opção "(.*?)" na lista "(.*?)"$/) do |arg1, arg2|
 select arg1, from: arg2
end

Dado(/^que eu estou logado$/) do
  @user = FactoryGirl.create(:user)
  simple_sign_in(@user)
end

Dado(/^estou na pagina "(.*?)"$/) do |arg1|
  visit arg1
end

Dado(/^que eu estou na homepage$/) do
  visit root_path
end

Quando(/^eu clico no link "(.*?)"$/) do |arg1|
  click_link arg1
end

Quando(/^clico no filtro "(.*?)"$/) do |arg1|
  choose(arg1)
end

Quando(/^clico no link "(.*?)"$/) do |arg1|
  click_link arg1
end

Quando(/^eu preencho o campo "(.*?)" com "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Quando(/^eu clico no atendimento "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^erros aparecem$/) do
  page.should have_selector('div.alert.alert-danger')
end

E(/^preencho o campo "(.*?)" com "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Quando(/^eu preencho "(.*?)" em "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

E(/^clico no botão "(.*?)"$/) do |arg1|
  click_button arg1
end

Quando(/^aperto "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo "(.*?)"$/) do |arg1|
  assert page.has_text?(arg1)
end

Entao(/^vejo o texto "(.*?)"$/) do |arg1|
  assert page.has_text?(arg1)
end

Entao(/^vejo o nome do usuario$/) do
   page.has_link?("Eduardo")
end

Entao(/^sou redirecionado para a pagina "(.*?)"$/) do |arg1|
  visit arg1
end

Entao(/^erros aparecem"$/) do
  page.should have_selector('div.alert.alert-danger')
end


#'cadastrar' methods
Entao(/^vejo o formulario de cadastro$/) do
  assert page.has_text?("Nome")
  assert page.has_text?("E-mail")
  assert page.has_text?("Senha")
  assert page.has_text?("Repetir")
end

Dado(/^que eu estou na pagina do formulario de cadastro$/) do
   visit "/signup"
end


#'listar atendimento' methods

Dado(/^que existe um atendimento de id "(.*?)"$/) do |arg1|
  @customer_service = FactoryGirl.create(:customer_service)
end




Dado(/^que eu estou na pagina de listar atendimento$/) do
  visit "/customer_services"
end

Entao(/^vejo a lista de atendimentos$/) do
  assert page.has_text?("Lista de Atendimentos")
end

E(/^vejo os filtros para pesquisar atendimento$/) do
  assert page.has_text?("BUSCAR")
  assert page.has_text?("ID")
  assert page.has_text?("Ano")
  assert page.has_text?("Descrição")
  assert page.has_text?("Região")
  assert page.has_text?("UF")
end

Entao(/^vejo atendimentos ocorridos na regiao Norte$/) do
  assert page.has_text?("AP")
end

Entao(/^vejo atendimentos ocorridos no ano 2012$/) do
  assert page.has_text?("2012")
end

Entao(/^vejo a lista de atendimentos com os atendimentos vazios$/) do
  assert page.has_text?("")
end

#E(/^existe um atendimento$/) do
#  @customer_service = FactoryGirl.create(:customer_service)
#end

Entao(/^vejo dados deste atendimento$/) do
  assert page.has_text?("Atendimento 50")
end

Entao(/^vejo atendimentos ocorridos no DF$/) do
  assert page.has_text?("DF")
end


#ranking
Então(/^vejo o ranking de atendimentos$/) do
  assert page.has_text?("Pontuação")
  assert page.has_text?("Posição")
  assert page.has_text?("ID")
  assert page.has_text?("UF")
  assert page.has_text?("Telefone")
  assert page.has_text?("Email")
end


#logar
Entao(/^vejo o formulario de login$/) do
  assert page.has_text?("E-mail")
  assert page.has_text?("Senha")
end

Dado(/^que eu estou na pagina de login$/) do
  visit signin_path
end

Quando(/^preencho informacao invalida$/) do
  click_button "Logar"
end

Dado(/^possuo uma conta$/) do
  @user = User.new(name_user: "User", email_user: "user@gmail.com",
                      password: "135790", password_confirmation: "135790",
		      address_user: "DF")
end

Quando(/^submeto informacoes validas$/) do
  fill_in "E-mail", with: @user.email_user
  fill_in "Senha", with: @user.password
  click_button "Logar"
end


#'supplier' methods

Entao(/^vejo a lista de fornecedores$/) do
  assert page.has_text?("Lista de Fornecedores")
end

E(/^vejo os filtros para pesquisar fornecedor$/) do
  assert page.has_text?("BUSCAR")
  assert page.has_text?("Nome")
  assert page.has_text?("CNPJ")
end

Entao(/^vejo a lista de fornecedores com os fornecedores vazios$/) do
  assert page.has_text?("")
end

E(/^existe um fornecedor$/) do
  @supplier = FactoryGirl.create(:supplier)
end

Entao(/^vejo o fornecedor pelo nome$/) do
  assert page.has_link?("SAMSUNG")
end

Entao(/^vejo o fornecedor pelo Cnpj$/) do
  assert page.has_link?("TIM CELULAR")
end

Entao(/^vejo dados deste fornecedor$/) do
  assert page.has_text?("BGN")
  assert page.has_text?("ID Fornecedor")
  assert page.has_text?("Razão Social")
  assert page.has_text?("CNPJ")
  assert page.has_text?("CNAEP")
  assert page.has_text?("Descrição")
end

Dado(/^que eu estou na pagina de fornecedores$/) do
  visit "/suppliers"
end


# FAQ 'methods'

Dado(/^que eu estou na pagina do FAQ$/) do
  visit "/faqs"
end

Entao(/^vejo a lista de perguntas$/) do
  assert page.has_text?("Perguntas Frequentes sobre Lei de Acesso a Informação")
end

Quando(/^eu clico na primeira pergunta$/) do
  page.has_link?("O que é uma Ouvidoria?")
end

Quando(/^clico no topico "(.*?)"$/) do |arg1|
  click_link("Ouvidoria")
end

Entao(/^vejo sua resposta$/) do
  page.has_text?("A Ouvidoria é um canal de comunicação que serve de intermediação entre o cidadão usuário e os órgãos do GDF, para receber elogios, sugestões, reclamações e denúncias, em relação às ações e aos serviços prestados pelo Governo do Distrito Federal. A Ouvidoria tem a incumbência de representar você, cidadão, na relação com os órgãos ou entidades do GDF, na busca de soluções e esclarecimentos para suas reivindicações, dúvidas ou denúncias.")
end

# Avaliar unidade do procon

Dado(/^que existe uma unidade do procon de ID "(.*?)"$/) do |arg1|
  @unity_procon = FactoryGirl.create(:unity_procon)
end


Dado(/^existe uma unidade Procon$/) do
  @unity_procon = FactoryGirl.create(:unity_procon)
end


# CDC methods

Dado (/^que eu estou na pagina da Legislacao$/) do
   visit "/cdcs"
end

Entao(/^vejo o codigo do consumidor$/) do
  assert page.has_text?("Código do Consumidor")
end

Quando(/^eu clico no primeiro topico da arvore de opcoes$/) do
  page.has_link?("Capítulo I")
end

E(/^clico no subtopico$/) do
  page.has_link?("Disposições Gerais")
end

Entao(/^vejo o capitulo do codigo$/) do
  assert page.has_text?("Art. 1° O presente código estabelece normas de proteção e defesa do consumidor, de ordem pública e interesse social, nos termos dos arts. 5°, inciso XXXII, 170, inciso V, da Constituição Federal e art. 48 de suas Disposições Transitórias.")
end


#listar unidades methods

Entao(/^vejo a lista de unidades$/) do
  assert page.has_text?("Lista de Unidades do Procon")
end

Dado(/^que eu estou na pagina da lista de unidades do procon$/) do
  visit "/unity_procons"
end

Entao(/^sou redirecionado para a pagina dessa Unidade Procon$/) do
  visit "/unity_procons/250"
end

E(/^vejo os dados dessa unidade$/) do
  assert page.has_text?("Unidade do Procon 250")
  assert page.has_text?("Endereço")
  assert page.has_text?("UF")
  assert page.has_text?("Email")
end

E(/^vejo filtro de pesquisa por estado$/) do
  assert page.has_text?("BUSCAR")
  assert page.has_text?("Busca Textual")
end

Entao(/^posso ver unidades presentes no DF$/) do
   assert page.has_text?("DF")
end


#Gráficos methods

Entao(/^vejo os filtros de pesquisa$/) do
   assert page.has_text?("BUSCAR POR ESTADO")
   assert page.has_text?("BUSCAR POR REGIÃO")
end

E(/^vejo a pagina de graficos$/) do
   assert page.has_text?("Gráfico de Atendimentos")
end


#Manter_usuario methods

Entao(/^sou redirecionado para a homepage$/) do
  visit root_path
end


Quando(/^vejo o botao "(.*?)"$/) do |arg1|
  page.should have_button("Editar")
end


#avaliar methods

Entao(/^vejo os campos para avaliar essa Unidade do Procon$/) do
  pending # express the regexp above with the code you wish you had
end

Entao(/^sou redirecionado para a pagina de avaliacao de unidades$/) do
  visit "/avaliar"
end

Dado(/^que eu estou na pagina de avaliacao de unidades$/) do
  visit "/avaliar"
end

Entao(/^sou redirecionado para a pagina com informacoes desta unidade$/) do
  visit "/unity_procons/2318"
end

E(/^posso ver informacoes relacionadas a ela$/) do
  assert page.has_text?("Unidade do Procon 2318")
  assert page.has_text?("Endereço")
  assert page.has_text?("Coordenador")
  assert page.has_text?("UF")
  assert page.has_text?("Email")
  assert page.has_text?("Reputação")
  assert page.has_text?("Nota")
  assert page.has_text?("Avaliações")
end

#Ranking methods

Entao(/^vejo o filtro para pesquisa por estado$/) do
  assert page.has_text?("BUSCAR")
end

Entao(/^vejo minha avaliacao$/) do
  assert page.has_text?("Péssimo")
  assert page.has_text?("Atendimento horrível")
end

