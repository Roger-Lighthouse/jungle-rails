class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end


  def show
    @product = Product.find params[:id]
  end


  def hello
    render html: 'Hello World!!'
  end

end
