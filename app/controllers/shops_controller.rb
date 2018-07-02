class ShopsController < ApplicationController
  def top
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to @shop
  end

  def edit
    @shop = Shop.find(params[:id])

  end

  def update
    @shop = Shop.find8(params[:id])
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render :edit
    end

  def show
    @shop = shop.find(params[:id])
    if @shop.save
     redirect_to @shop
   else
     render :new
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destory
    redirect_to shop_path
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :description, :image, :budget_min, :budget_max, :genre_id, :area_id, :user_id, :review_avg)
  end
end
