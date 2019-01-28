class SchoolController < ApplicationController
before_action :admin_user,     only: :destroy
    def show
    	@school = School.all
  	end

    def create
    	@school = School.new(school_params)
    	if @school.save
        render 'new'
    	else
      		render 'new'
    	end
    end

  def new
  		@school = School.new
  	end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(school_params)
      flash[:success] = "school aangepast"
      redirect_to showSchools_path
    else
      render 'edit'
    end
  end

  def destroy
    School.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to showSchools_path

  end
      private

  	  def school_params
      	params.require(:school).permit(:naam)
	    end

      def admin_user
        redirect_to(root_url) unless current_user.admin?
      end
end
