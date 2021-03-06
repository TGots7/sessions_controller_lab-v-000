class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    if !logged_in?
      redirect_to login_path
    else
      redirect_to root_path
    end
  end

  def logged_in?
    session[:name]
  end

end
