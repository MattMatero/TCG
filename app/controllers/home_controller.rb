class HomeController < ApplicationController
  def index
  end 

  def about
  end

  def contact
  end

  def profile
    if params[:name]
      @user = User.find_by(username: params[:name])
    else
      @user = current_user
    end

  end

  def photopicker
    if params[:img]
      current_user.update(image: params[:img])
    end
  end
  
end
