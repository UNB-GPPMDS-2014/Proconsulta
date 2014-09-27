class CustomerServicesController < ApplicationController

  def index
    @customer_services = CustomerService.all
  end

  def show
    @customer_service = CustomerService.find(params[:id])
  end
end