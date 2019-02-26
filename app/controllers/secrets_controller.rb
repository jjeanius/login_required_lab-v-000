class SecretsController < ApplicationController
  before_action :require_login, only:[:new]


  def new
  end

  def get show
    redirect_to signin_path controller: 'sessions', action: 'new'
  #  return head(:sessions) unless session.include? :name

  end


end
