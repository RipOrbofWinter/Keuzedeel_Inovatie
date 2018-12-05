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
  	
    def create
    @user = User.new(params[:user])    # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end
end
