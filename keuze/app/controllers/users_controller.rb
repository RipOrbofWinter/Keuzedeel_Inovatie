class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

  end

  def user_params
      	params.require(:user).permit(:image)
  end

  def new
  	@user = User.new
  end
end
