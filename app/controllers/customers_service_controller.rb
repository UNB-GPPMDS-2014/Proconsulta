class CustomersServiceController <ApplicationController

  # GET /CostumersService
  # GET /products.json
  def index
    @CostumersService = CostumersService.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @CostumersService }
    end
  end