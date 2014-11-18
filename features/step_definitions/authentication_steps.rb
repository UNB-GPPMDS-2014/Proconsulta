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

Quando(/^eu clico em determinado ID de Unidade Procon$/) do
  click_link '758'  
end

Entao(/^sou redirecionado para a pagina dessa Unidade Procon$/) do
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo os campos para avaliar essa Unidade do Procon$/) do
  pending # express the regexp above with the code you wish you had
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
  page.should have_selector('div.alert.alert-error')
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

Entao(/^sou redirecionado para a pagina "(.*?)"$/) do |arg1|
  visit arg1
end

Entao(/^erros aparecem"$/) do
  page.should have_selector('div.alert.alert-error')
end


#'cadastrar' methods
Entao(/^vejo o formulario de cadastro$/) do
  assert page.has_text?("Nome")
  assert page.has_text?("E-mail")
  assert page.has_text?("Senha")
  assert page.has_text?("Repetir")
end


#'listar atendimento' methods

Dado(/^que eu estou na pagina de listar atendimento$/) do
  visit "/list"
end


Entao(/^vejo a lista de atendimentos$/) do
  assert page.has_text?("Ano")
  assert page.has_text?("UF")
  assert page.has_text?("ID")
  assert page.has_text?("Descrição")
end

Entao(/^vejo os filtros para pesquisar atendimento$/) do
  assert page.has_text?("BUSCAR")
  assert page.has_text?("Busca Textual")
  assert page.has_text?("Filtros")
end

Entao(/^vejo a lista de atendimentos com os atendimentos vazios$/) do
  assert page.has_text?("")
end

E(/^existe um atendimento$/) do
  @customer_service = FactoryGirl.create(:customer_service)
end

Entao(/^vejo dados deste atendimento$/) do
  assert page.has_text?("2014")
  assert page.has_text?("DF")
  assert page.has_text?("11111111")
  assert page.has_text?("Centro-Oeste")
end

Entao(/^vejo um atendimento$/) do
  page.has_link?("50")
end

#listar
Então(/^vejo o ranking de atendimentos$/) do
  ssert page.has_text?("Posição")
  assert page.has_text?("ID")
  assert page.has_text?("UF")
  assert page.has_text?("Telefone")
  assert page.has_text?("Email")
end


#logar
Então(/^vejo o formulario de login$/) do
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
		      address_user: "AC")
end

Quando(/^submeto informacoes validas$/) do
  fill_in "E-mail", with: @user.email_user
  fill_in "Senha", with: @user.password
  click_button "Logar" 
end

Entao(/^vejo o link de "(.*?)"$/) do |arg1|
   page.should have_link('Deslogar', href: signout_path)
end

#'supplier' methods

Entao(/^vejo a lista de fornecedores$/) do
  assert page.has_text?("Fornecedor")
  assert page.has_text?("CNPJ")
end

Entao(/^vejo os filtros para pesquisar fornecedor$/) do
  assert page.has_text?("BUSCAR")
  assert page.has_text?("Busca Textual")
end

Entao(/^vejo a lista de fornecedores com os fornecedores vazios$/) do
  assert page.has_text?("")
end

E(/^existe um fornecedor$/) do
  @supplier = FactoryGirl.create(:supplier)
end

Entao(/^vejo o fornecedor por nome$/) do
  assert page.has_link?("TIM CELULAR")
end

Entao(/^vejo o fornecedor por CNPJ$/) do
  assert page.has_link?("TIM CELULAR")
end

Entao(/^vejo dados deste fornecedor$/) do
  assert page.has_text?("BGN")
  assert page.has_text?("00558456000171")
 end


# FAQ 'methods'

Entao(/^vejo a lista de perguntas$/) do
  assert page.has_text?("Perguntas Frequentes sobre Lei de Acesso a Informação")
end

Quando(/^eu clico na primeira pergunta$/) do
 page.has_link?("Qual a finalidade da Lei de Acesso à Informação?")
end

Entao(/^vejo sua resposta$/) do
 page.has_text?("O art. 5º, inciso XXXIII da Constituição Federal prevê que todos têm direito a receber dos órgãos públicos informações de seu interesse particular, ou de interesse coletivo ou geral. A Lei nº 12.527, de 18 de novembro de 2011 além de garantir esse direito, colabora para o fortalecimento do controle social e da participação cidadão.")
end

# Avaliar unidade do procon

Dado(/^existe uma unidade Procon$/) do
  @unity_procon = FactoryGirl.create(:unity_procon)
end



