require 'spec_helper'
require 'rails_helper'

describe 'users/new.html.erb' do
	context 'signup' do
		it 'displays the form for new user' do
			assign(:user, build(:user, url: nil))
			render
			expect(rendered).to have_link '/users/new'
		end
	end

end
