class Supplier < ActiveRecord::Base
	has_many :customer_services
	attr_accessible :type_supplier, :social_reason_supplier, :fantasy_name_supplier, :cnpj, 
		:cnaep_main_code_supplier, :description_cnaep_code_supplier


	
end