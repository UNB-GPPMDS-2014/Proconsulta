class CustomerServicesController < ApplicationController

	def index
		@customer_services = CustomerService.paginate(page: params[:page])
	end

	def show
	    @customer_service = CustomerService.find(params[:id])
	end

end

