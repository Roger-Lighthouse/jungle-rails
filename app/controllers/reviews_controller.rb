class ReviewsController < ApplicationController

  before_action :require_login

  def create
    #raise 'Got here'
    review = Review.new(review_params)
    review.user_id = current_user.id
    review.product_id = params[:product_id]
    review.save!
    redirect_to products_path(:id => review.product_id)
  end
#(:id=>rev.id)


  def destroy
    id = params[:id]
    rev = Review.find(id)
    rev.destroy!
    redirect_to products_path
  end


  private

  def review_params
    params.require(:review).permit(:description, :rating, :user_id, :product_id)
  end


  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to products_url # halts request cycle
    end
  end

end
