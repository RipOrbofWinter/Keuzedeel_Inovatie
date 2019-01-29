class TournooistartsController < ApplicationController
skip_before_action :verify_authenticity_token

	def show
    	@wedstrijd = Wedstrijd.all
     	@tournooienStop = Tournooistart.first
  	end

    def create
    	@tournooien = Tournooistart.new(speler_params)
    	if @tournooien.save
    		flash[:succes] = "Welcome to the Keuzedeel Website!"
    	else
      		render 'new'
    	end
    end

  def new
  		@tournooien = Tournooistart.new
  	end

  	def start
    Tournooistart.first == true;
    redirect_to showtournooi_path
    end
end
