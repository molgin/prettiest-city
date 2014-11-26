class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@matchups = @user.matchups
    @winning_cities = @user.get_winning_cities
    #binding.pry
  end

  def current
    @user = current_user
    render :show
  end
  
end
