class ChildFamilyGuardianProvidersController < ApplicationController
  before_action :set_child_family_guardian_provider, only: [:show, :edit, :update, :destroy]

  # GET /child_family_guardian_providers
  # GET /child_family_guardian_providers.json
  def index
    @child_family_guardian_providers = ChildFamilyGuardianProvider.all
  end

  # GET /child_family_guardian_providers/1
  # GET /child_family_guardian_providers/1.json
  def show
  end

  # GET /child_family_guardian_providers/new
  def new
    @child_family_guardian_provider = ChildFamilyGuardianProvider.new
  end

  # GET /child_family_guardian_providers/1/edit
  def edit
  end

  # POST /child_family_guardian_providers
  # POST /child_family_guardian_providers.json
  def create
    @child_family_guardian_provider = ChildFamilyGuardianProvider.new(child_family_guardian_provider_params)

    respond_to do |format|
      if @child_family_guardian_provider.save
        format.html { redirect_to @child_family_guardian_provider, notice: 'Child family guardian provider was successfully created.' }
        format.json { render :show, status: :created, location: @child_family_guardian_provider }
      else
        format.html { render :new }
        format.json { render json: @child_family_guardian_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_family_guardian_providers/1
  # PATCH/PUT /child_family_guardian_providers/1.json
  def update
    respond_to do |format|
      if @child_family_guardian_provider.update(child_family_guardian_provider_params)
        format.html { redirect_to @child_family_guardian_provider, notice: 'Child family guardian provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_family_guardian_provider }
      else
        format.html { render :edit }
        format.json { render json: @child_family_guardian_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_family_guardian_providers/1
  # DELETE /child_family_guardian_providers/1.json
  def destroy
    @child_family_guardian_provider.destroy
    respond_to do |format|
      format.html { redirect_to child_family_guardian_providers_url, notice: 'Child family guardian provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_family_guardian_provider
      @child_family_guardian_provider = ChildFamilyGuardianProvider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_family_guardian_provider_params
      params.require(:child_family_guardian_provider).permit(:child_id, :family_id, :guardian_id, :provider_id)
    end
end
