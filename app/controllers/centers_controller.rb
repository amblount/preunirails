class CentersController < ApplicationController
  def index
  	@centers = Center.all
  	render "home"
  end

  def show
  	@center = Center.find(params[:id])
  end
end
