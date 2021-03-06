class UsersController < ApplicationController
    def show
    	@user = User.find(params[:id])
  	end

    def create
    	@user = User.new(user_params)
    	if @user.save
        log_in @user
    		flash[:succes] = "Welcome to the Keuzedeel Website!"
   			redirect_to @user
    	else
      		render 'new'
    	end
    end

  def new
  		@user = User.new
  	end

  def edit
    @user = User.find(params[:id])
  end

    private

  	  def user_params
      	params.require(:user).permit(:name, :email, :password,
      								               :password_confirmation, :image)
	    end
end
