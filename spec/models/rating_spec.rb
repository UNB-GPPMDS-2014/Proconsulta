require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe Rating do
	before do
		@rating = Rating.new(value_rating: "7",
		 description_rating: "blablabla")
	end

	subject { @rating }
		it { should respond_to(:value_rating) }
		it { should respond_to(:description_rating) }

	
end