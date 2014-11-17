require 'rails_helper'
require 'spec_helper'
require 'capybara/rspec'
include SessionsHelper

describe SessionsController, :type => :controller do 
	before do
		@user = FactoryGirl.create(:user)
	end
	let(:valid_session) { {} }
	describe "POST destroy" do
		it "should logout" do
		  sign_in(@user)
		  get :destroy
		  session[:user_id].should be(nil)
		  response.should be_redirect
  		end
	end

	describe "GET new" do
		it "should render signin page" do
			get :new
			expect(response).to have_http_status(:success)
		end
	end
	describe "POST create" do
		it "expect user to be finded by email" do
			post :create, session: { email_user: "teste@teste.com", password: "teste123" }
			expect(signed_in?).to be(!nil) 
		end
	end


end