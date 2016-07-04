class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all
  end
  def new
    @location = Location.find(params[:location_id])
    @thought = Thought.new
  end
  def create
    @location = Location.find(params[:location_id])
    @thought = Thought.create!(thought_params.merge(location: @location))
    redirect_to @location
  end
  def edit
    @location = Location.find(params[:location_id])
    @thought = Thought.find(params[:id])
  end
  def update
    @thought = Thought.find(params[:id])
    @thought.update(thought_params)
    redirect_to @thought.location
  end
  def destroy
    @location = Location.find(params[:location_id])
    @thought = Thought.find(params[:id])
    @thought.destroy
    redirect_to location_path(@location)
  end

private
  def thought_params
    params.require(:thought).permit(:title, :author, :body, :has_been)
  end

end
