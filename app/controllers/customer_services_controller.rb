class CustomerServicesController < ApplicationController

  def index
    @customer_services = CustomerService.first(5)
  end

  def show
    @customer_service = CustomerService.find(params[:id])
  end
end