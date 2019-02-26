class SecretsController < ApplicationController
  before_action :require_login


  def new
  end

  def show

  end

  private

  def require_login
    return head(:see_other) unless session.include? :name
  end

end
