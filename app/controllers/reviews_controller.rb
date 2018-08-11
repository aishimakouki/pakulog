class ReviewsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @review = @shop.reviews.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to [@review.shop, @review]
    else
      #@reviewに紐ずくshopを抽出
      @shop = @review.shop
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
    @shop = @review.shop
  end

  def edit
    @review = Review.find(params[:id])
  　@shop =@review.shop
  end



private

  def review_params
    params.require(:review).permit(:title, :description, :evaluation, :image, :shop_id, :user_id)
  end
end
