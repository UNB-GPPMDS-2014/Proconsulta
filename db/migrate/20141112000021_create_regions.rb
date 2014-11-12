class CreateRegions < ActiveRecord::Migration
	def up
		create_table :regions do |region|
			region.string :description_region
			region.integer :quantity_region
			region.integer :quantity_direct_complaint
			region.integer :quantity_preliminary_service
			region.integer :quantity_calculation
            region.integer :quantity_cip
            region.integer :quantity_forward_supervision
			region.integer :quantity_initial_jec
			region.integer :quantity_letter_complaint
			region.integer :quantity_simple_consult

            region.timestamps
        end
    end

    def down
    	drop_table :regions
    end
end
