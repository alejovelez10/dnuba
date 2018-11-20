class HomeController < ApplicationController

  def inicio
  	@experiences = Experience.all
  end

  def all_projects
  	@experiences = Experience.all.paginate(:page => params[:page], :per_page => 9)
  end

  def show_projects
    render layout: "page"
  	@experience = Experience.find(params[:id])
  end

  def construccion
  	render layout: "application"
  end 	


end
