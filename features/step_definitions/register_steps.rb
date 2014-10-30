require File.expand_path(File.join(File.dirname(__FILE__),"..","support","paths"))

Dado (/^que eu estou na home page$/) do
	visit '/'
end

Quando(/^eu clico no link (.+)$/) do |text|
	click_link text
end

Entao(/^vejo o formulario de cadastro$/) do
	page.should have_content 'Repetir'
end