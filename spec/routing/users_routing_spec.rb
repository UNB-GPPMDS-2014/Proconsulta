require "rails_helper"

	describe UsersController, :type => routing do
		describe "routing" do

			it "routes to #index" do 
				expect(:get => "/users").to route_to("users#index")
			end

			it "routes to #new" do
				expect(:get => "/users/new").to route_to("users#new")
			end

			it "routes to #edit" do
				expect(:get => "/users/7/edit").to route_to("users#edit", id => "7")
			end

			it "routes to #update" do
				expect(:put => "/users/7").to route_to("users#update", id => "7")

			it "routes to #show" do
				expect(:get => "/users/7").to route_to("users#show", id => "7")
			end

			it "routes to #destroy" do
				expect(:delete => "/users/7").to route_to("users#destroy", id => "7")
			end

		end
	end

end