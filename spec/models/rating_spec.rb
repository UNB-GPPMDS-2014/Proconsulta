require 'rspec/its'
require 'spec_helper'
require 'rails_helper'

describe Rating do
	before do
		@rating = Rating.new(idRating: "1", valeu_rating: "7",
		 descripion_rating: "blablabla")
	end

	subject { @rating }
		it { should respond_to(:idRating) }
		it { should respond_to(:valeu_rating) }
		it { should respond_to(:descripion_rating) }

	
end