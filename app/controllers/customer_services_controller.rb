class CustomerServicesController < ApplicationController
	
	def index # List all Customer_Services
		@customer_services = CustomerService.paginate(page: params[:page])
	end

	def show # List Customer_Service related to one especific id.
	    @customer_service = CustomerService.find(params[:id])
	end

	def custom_search

		sql = ""

		if !params[:type_search].nil? and params[:type_search] != "Fornecedor"
			sql += "#{params[:type_search]}_customer_service = ? AND "
		end
	end
end