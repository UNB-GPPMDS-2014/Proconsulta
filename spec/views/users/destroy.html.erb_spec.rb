require 'spec_helper'
require 'rails_helper'
require 'capybara/rspec'

describe 'users/destroy.html.erb' do
	it 'destroys the user selected' do
		render
		# rendered.should match('Usuário Excluído')
		rendered.should match('Logar')
		rendered.should match('Home')
	end
end