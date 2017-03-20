class Admin::CategoriesController < ApplicationController

  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'] , password: ENV['ADMIN_PASSWORD']


  def index
    @cats = Category.all
    @category = Category.new
  end


  def create
    @cats = Category.all
    @category = Category.new(category_params)
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end


  def category_params
    params.require(:category).permit(
      :name
    )
  end

end