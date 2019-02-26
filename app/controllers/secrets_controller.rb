class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def get show
    return head(:redirection) unless session.include? :name
    end

  end

  private

  def require_login
    return head(:redirection) unless session.include? :name
  end

end
