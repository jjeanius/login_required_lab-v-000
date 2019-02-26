class SecretsController < ApplicationController
  before_action :require_login, only:[:new]
  force_ssl only: :300

  def new
  end

  def get show
    return head(:sessions) unless session.include? :name
  #  @name = name.find_by(name: params[:name])

  end


end
