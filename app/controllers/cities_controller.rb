class CitiesController < ApplicationController
  def index
  	@cities = City.all
  	@posts = Post.all
  end

  def show
  	@city = City.find(params[:id])
    render :show
  end
end
