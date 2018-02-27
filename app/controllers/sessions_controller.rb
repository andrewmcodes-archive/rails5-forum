class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]
  def new
    user = User.create_or_update_from(request.env['omniauth.auth'])
    # Store ID in a session so we can use it across many requests
    session[:user_id] = user.id
    redirect_to root_path
  end

  def sign_out
    session.delete(:user_id)
    redirect_to root_path

  end

  private

  def authenticate_user!
    unless user_logged_in?
      flash[:notice] = 'You need to login!'
      redirect_to root_path
    end
  end

end