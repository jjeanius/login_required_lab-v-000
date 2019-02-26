class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show
    if params[:name] && !params[:name].empty?
      redirect_to "/sessions/new"
    else
      redirect_to '/secrets/new'
    end

  end

  private

  def require_login
    return head(:found) unless session.include? :name
  end

end
