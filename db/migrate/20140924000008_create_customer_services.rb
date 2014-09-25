class CreateCustomerServices < ActiveRecord::Migration
	def change
		create_table :customer_services do |f|
			f.string :year_customer_service
			f.string :trimester_customer_service
			f.string :month_customer_service
			f.string :date_customer_service
			f.string :region_customer_service
			f.string :uf_customer_service
			f.string :description_customer_service
			f.string :code_subject_customer_service
			f.string :description_subject_customer_service
			f.string :code_problem_customer_service
			f.string :description_problem_customer_service
			f.string :genre_customer_service
			f.string :cep_customer_service

            f.timestamps
        end
    end
end

