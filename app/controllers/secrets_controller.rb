class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show
    return head(:redirection) unless session.include? :name
    end


  private

  def require_login
    return head(3XX: redirect) unless session.include? :name
  end

end
