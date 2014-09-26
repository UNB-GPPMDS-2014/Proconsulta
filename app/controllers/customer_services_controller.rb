class CustomerServicesController < ApplicationController

  # GET /CostumerServices
  def index
    @Costumer_services = CostumerService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Costumer_services }
    end
  end

  def show
    @Costumer_services = CustomerService.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Customer_services }
    end
  end
end