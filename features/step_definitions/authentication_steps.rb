# encoding: utf-8

#common methods
Dado(/^que eu estou na homepage$/) do
  visit root_path
end

Quando(/^eu clico no link "(.*?)"$/) do |arg1|
  click_link arg1
end

Quando(/^eu preencho o campo "(.*?)" com "(.*?)"$/) do |arg1, arg2|
  pending # teste
end

Quando(/^eu clico no atendimento "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^erros aparecem$/) do
  pending # express the regexp above with the code you wish you had
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
  assert page.has_text(arg1)
end


Entao(/^sou redirecionado para a pagina "(.*?)"$/) do |arg1|
  pending # pendente
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

Entao(/^vejo a lista de atendimentos$/) do
  assert page.has_text?("Ano")
  assert page.has_text?("UF")
  assert page.has_text?("ID")
  assert page.has_text?("Descrição")
end

Entao(/^vejo os filtros para pesquisar atendimento$/) do
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo a lista de atendimentos com os atendimentos "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo a lista de atendimentos com um atendimento:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end



