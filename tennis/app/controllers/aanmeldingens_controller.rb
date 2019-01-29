class AanmeldingensController < ApplicationController
before_action :admin_user,     only: :destroy

    def show
    	@aanmeldingen = Aanmeldingen.all
      @aanmeldingenStop = Aanmeldingen.first
  	end

    def create
    	@aanmeldingen = Aanmeldingen.new(speler_params)
    	if @aanmeldingen.save
    		flash[:succes] = "Welcome to the Keuzedeel Website!"
    	else
      		render 'new'
    	end
    end

  def new
  		@aanmeldingen = Aanmeldingen.new
  	end

  def destroy
    Aanmeldingen.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to showAan_path

  def start
    AanmeldingenStop.first.stop == true;
    redirect_to showAan_path
    end

  end
      private

  	  def speler_params
      	params.require(:aanmeldingen).permit(:speler_id, :toernooi_id)
	    end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
