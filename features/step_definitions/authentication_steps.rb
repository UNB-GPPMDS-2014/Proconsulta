# encoding: utf-8

Dado(/^que eu estou na home page$/) do
  visit root_path
end

Quando(/^eu clico no link "(.*?)"$/) do |arg1|
  click_link arg1
end

Entao(/^vejo o formulario de cadastro$/) do
  assert page.has_text?("Nome")
  assert page.has_text?("E-mail")
  assert page.has_text?("Senha")
  assert page.has_text?("Repetir")
end

Quando(/^eu preencho o campo "(.*?)" com "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

Quando(/^preencho o campo "(.*?)" com "(.*?)"$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Quando(/^pressionar o botão "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Entao(/^vejo "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
