class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show

  end

  private

  def require_login
    return head(:redirect_to :sessions_new) unless session.include? :name
  end

end
