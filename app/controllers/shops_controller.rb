class ShopsController < ApplicationController
  def top
  end

  def new
    @user = User.new
  end

  def create
    @user = user.new(user_params)
    @user.save
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(
      :nick_name
      )
  end

end
