class SecretsController < ApplicationController
  before_action :require_login, only:[:new]
  forced_ssl :show

  def new
  end

  def show
    return head(:sessions) unless session.include? :name
  #  @name = name.find_by(name: params[:name])

  end


end
