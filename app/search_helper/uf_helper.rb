class UfHelper < ActiveRecord::Base
	
	attr_accessible :description_uf, :quantity_uf

	def to_s
		self.description_uf
		self.quantity_uf	
	end


end

