class ShopsController < ApplicationController
  def top
     @q = Shop.ransack(params[:q])
     @shops = @q.result.page(params[:page])
     @reviews = Review.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to @shop
    else
      render :new
    end
  end

  def edit
    @shop = Shop.find(params[:id])

  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render :edit
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @reviews = @shop.reviews.page(params[:page]).per(3)
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end

  def index
    @q = Shop.ransack(params[:q])
    @shops = @q.result.page(params[:page])
  end


  private

  def shop_params
    params.require(:shop).permit(:name, :description, :image, :budget_min,
      :budget_max, :genre_id, :area_id, :user_id, :review_avg)
  end

end
