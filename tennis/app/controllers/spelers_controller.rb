class SpelersController < ApplicationController
  before_action :admin_user,     only: :destroy
    def show
    	@speler = Speler.all
  	end

    def create
    	@speler = Speler.new(speler_params)
    	if @speler.save
    		flash[:succes] = "Welcome to the Keuzedeel Website!"
    	else
      		render 'new'
    	end
    end

  def new
  		@speler = Speler.new
  	end

  def edit
    @speler = Speler.find(params[:id])
  end

  def update
    @speler = Speler.find(params[:id])
    if @speler.update_attributes(speler_params)
      flash[:success] = "speler aangepast"
      redirect_to showSpelers_path
    else
      render 'edit'
    end
  end

  def destroy
    Speler.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to showSpelers_path

  end
      private

  	  def speler_params
      	params.require(:speler).permit(:roepnaam, :tussenvoegsel, :achternaam,
                                       :school_id)
	    end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
