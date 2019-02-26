class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    params[:name] && !params[:name].empty?
    params[:name] = session[:name]
      @name = session[:name]
  end

end
