class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all
  end
  def show
    @thought = Thought.find(params[:id])
  end
  def new
    @thought = Thought.new
  end
  def create
    @thought = Thought.create!(thought_params)
    redirect_to @thought
  end

private
  def thought_params
    params.require(:thought).permit(:title, :author, :body, :has_been)
  end

end
