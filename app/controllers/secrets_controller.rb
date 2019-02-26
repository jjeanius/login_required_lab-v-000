class SecretsController < ApplicationController
  before_action :require_login, only:[:new]


  def new
  end

  def get show
    redirect_to_login path
  end


end
