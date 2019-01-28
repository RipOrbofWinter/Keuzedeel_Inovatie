class SpelersController < ApplicationController
    def show
    	@speler = User.find(params[:id])
  	end

    def create
    	@speler = User.new(user_params)
    	if @speler.save
        log_in @speler
    		flash[:succes] = "Welcome to the Keuzedeel Website!"
    	else
      		render 'new'
    	end
    end

  def new
  		@speler = User.new
  	end

  def edit
    @speler = User.find(params[:id])
  end

      private

  	  def user_params
      	params.require(:speler).permit(:voornaam, :achternaam, :school)
	    end
end
