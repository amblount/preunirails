class ProvidersController < ApplicationController
  def show
  	@provider = Provider.find(params[:id])
  	@center = @provider.centers.where(id: "1")
  	
  end
end
