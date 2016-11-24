class CentersController < ApplicationController
  def index
  	@centers = Center.all
  end

  def show
  	@center = Center.find(params[:id])
  end
end
