class ThoughtsController < ApplicationController
  def index
    @thoughts = Thought.all
  end
  def show
    @thought = Thought.all
  end
  def new
    @thought = Thought.new
  end
  def create
    @thought = Thought.create!(thought_params)
  end

private
  def thought_params
    params.require(:thought).permit(:title, :author, :body, :has_been)
  end

end
