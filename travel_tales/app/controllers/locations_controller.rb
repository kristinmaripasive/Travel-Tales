class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end
  def new
    @location = Location.new
  end
  def create
  redirect_to root_path unless @current_user
  @location = Location.create!(location_params)
  redirect_to locations_path(@location)
end
  def show
    @location = Location.find(params[:id])
    @thought = @location.thoughts.first
    # @comment = @thought.comments.new
  end
  def edit
    redirect_to root_path unless @current_user
    @location = Location.find(params[:id])
  end
  def update
    redirect_to root_path unless @current_user
    @location = Location.find(params[:id])
    @location.update(location_params)
    redirect_to location_path(@location)
  end
  def destroy
    redirect_to root_path unless @current_user
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end




private
  def location_params
    params.require(:location).permit(:name, :photo_url, :has_been)
  end

end
