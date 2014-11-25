class SessionsController < ApplicationController

  def new
  
  end
  
  def create
    # binding.pry
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    
    session[:user_id] = user.id

    redirect_to root_path, :notice => "You have successfully signed in"
    # binding.pry
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_path, :notice => "You have signed out!"
  end

end
