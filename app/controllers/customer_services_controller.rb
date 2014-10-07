class CustomerServicesController < ApplicationController
	# List all Customer_Services
	def index
		@customer_services = CustomerService.paginate(page: params[:page])
	end
	# List Customer_Service related to one especific id.
	def show
	    @customer_service = CustomerService.find(params[:id])
	end

end

