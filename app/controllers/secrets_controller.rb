class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show
    if params[:name] && !params[:name].empty?
      redirect_to "/sessions/new"
    end

  end

  private

  def require_login
    return head(:redirection) unless session.include? :name
  end

end
