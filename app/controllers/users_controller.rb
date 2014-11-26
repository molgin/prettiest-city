class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    if current_user
      if params[:id] != current_user.id
        redirect_to root_path
      else
        @user = current_user
        # @winning_cities = @user.get_winning_cities
      end
    else
      redirect_to root_path
    end
    # @user = User.find(params[:id])
    #@matchups = @user.matchups
    # @winning_cities = @user.get_winning_cities
    #binding.pry
  end

  def current
    @user = current_user
    render :show
  end
  
end
