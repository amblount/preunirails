class ProvidersController < ApplicationController
  def show
  	@provider = Provider.find(params[:id])
  	@center = Center.find(@provider.center_id)
  	@cfgp = ChildFamilyGuardianProvider.last
  	@guardian = Guardian.find(@cfgp.guardian_id)
  end
end
