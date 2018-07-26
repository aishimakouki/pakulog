class ReviewsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @review = @shop.reviews.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to @review
  end

  def show

  end



private

  def review_params
    params.require(:review).permit(:title, :description)
  end
end
