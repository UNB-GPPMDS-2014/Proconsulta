class CreateSuppliers < ActiveRecord::Migration
	def change
		create_table :suppliers do |f|
			f.string :type_supplier
			f.string :social_reason_supplier
			f.string :fantasy_name_supplier
			f.string :cnpj
			f.string :cnaep_main_code_supplier
			f.string :description_cnaep_code_supplier

            f.timestamps
        end
    end
end

