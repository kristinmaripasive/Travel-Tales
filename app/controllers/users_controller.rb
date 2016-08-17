class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
  end

  def update
    @user = User.find(params[:id])
    redirect_to root_url unless @current_user == @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

def remove_location
  @user = User.find(params[:id])
  user_location = @user.user_locations.destroy(user: @current_user)
  redirect_to user_path(user_location.user)
end



  private
  def location_params
    params.require(:location).permit(:name, :photo_url, :has_been)
  end
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
