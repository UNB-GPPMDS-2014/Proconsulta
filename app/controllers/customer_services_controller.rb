class CustomerServicesController < ApplicationController

  # GET /CostumerServices
  def index
    @Customer_services = CustomerService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Customer_services }
    end
  end

  def show
    @Customer_services = CustomerService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Customer_services }
    end
  end
end