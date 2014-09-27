class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.first(10)
  end

  def show
    @supplier = Supplier.find(params[:id])
  end
end