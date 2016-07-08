class CommentsController < ApplicationController
  def new
    @thought = Thought.find(params[:thought_id])
    @comment = @thought.comments.new

  end
  def create
    @location = Location.find(params[:location_id])
    @thought = Thought.find(params[:thought_id])
    @comment = @thought.comments.create!(comment_params)
    redirect_to location_path @location
  end
  def destroy
    @location = Location.find(params[:location_id])
    @thought = @location.thoughts.first
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to location_path @location
  end


  private
    def comment_params
      params.require(:comment).permit(:comment_name)
    end

end
