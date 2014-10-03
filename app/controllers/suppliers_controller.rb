class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.paginate(page: params[:page])
  end

  def show
    @supplier = Supplier.find(params[:id])
  end
end