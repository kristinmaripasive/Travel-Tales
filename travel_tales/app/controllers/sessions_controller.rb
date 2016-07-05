class SessionsController < ApplicationController

  def new
      @user = User.new
      @user.username = cookies[:username]
    end

    def create
      input_username = params[:user][:username]
      if User.exists?(username: input_username)
        @user = User.find_by(username: input_username)
        if @user.password === params[:user][:password]
          session[:user_id] = @user.id
          cookies[:username] = @user.username
          redirect_to root_path
        else
          flash[:alert] = "Wrong password!"
          redirect_to new_session_path
        end
      else
        flash[:alert] = "That user doesn't exist. Please sign up first below:"
        redirect_to new_user_path
      end
    end
    def destroy
      reset_session
      flash[:notice] = "You're signed out!"
      redirect_to :root
    end

end
