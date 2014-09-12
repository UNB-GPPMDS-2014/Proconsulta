require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

describe 'users/show.html.erb' do
	it 'displays the user details correctly' do
		assign(:user, User.new(name_user: 'Teste1234' ,
			email_user: 'teste@teste.com', password: 'teste1234',
			password_confirmation: 'teste1234', adress_user: 'teste'))
		render
		# name
		rendered.should match('Nome: Teste1234')
		# adress
		rendered.should match('teste')
	end
end