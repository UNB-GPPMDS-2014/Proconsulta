require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe SessionsHelper do
	before do
		@user = FactoryGirl.create(:user)
	end

	it "expect signed user return signed_in = true" do
		current_user=(@user)
		sign_in(@user)
		expect(signed_in?).to be(true)
	end

	it "expect signout user to return signed_in = false" do
		current_user=(@user)
		sign_out
		expect(signed_in?).to be(false)
	end

	it "expect user to has token after signin" do
		sign_in(@user)
		expect(@user.remember_token?).to be(!nil)
	end

	it "expect signout to clear current_user" do
		sign_in(@user)
		sign_out
		expect(current_user).to be(nil)
	end

	it "expect current_uf to be uf from current_user" do
		sign_in(@user)
		expect(current_uf).to be(@user.address_user)
	end

	it "expect current_uf to match method current_uf=" do
		current_uf=(@user.address_user)
		expect(current_uf).to equal(@user.address_user)
	end

	it "expect current_uf= to match current_uf" do
		sign_in(@user)
		expect(current_uf).to eq(current_user.address_user)
		current_uf=("DF")
		expect(current_uf).to eq("DF")
	end

	it "expect simple_sign_in to set current_user" do
		simple_sign_in(@user)
		expect(current_user).to eq(@user)
	end

end
