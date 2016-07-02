class MainController < ApplicationController
  def new
    @location = Location.new
  end
  def create
  @location = Location.create!(location_params)

  redirect_to @location
end

private
  def location_params
    params.require(:location).permit(:name, :photo_url, :has_been)
  end
  
end
