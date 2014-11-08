class CreateUfHelpers < ActiveRecord::Migration
	def change
		create_table :uf_helpers do |f|
			f.string :description_uf
			f.string :quantity_uf

			f.timestamps
        end
        
    end
end