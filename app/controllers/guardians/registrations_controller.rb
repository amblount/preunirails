class Guardians::RegistrationsController < Devise::RegistrationsController
include GuardiansHelper
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]
# before_action :configure_permitted_parameters, if: :devise_controller?

  # GET /resource/sign_up
  def new
    @neighborhood_options = Neighborhood.all.collect {|n| [ n.name, n.id ] }
    @guardian = build_resource(params[:guardian])
    super
  end

  # POST /resource
  def create
    build_resource(@guardian)
    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |guardian_params|
      guardian_params.permit(:email, :name, :phone, :full_address, :city, :state, :zipcode, :center_id, :neighborhood_id, :password, :password_confirmation)
    end
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update) do |guardian_params|
      guardian_params.permit(:email, :name, :phone, :full_address, :city, :state, :zipcode, :center_id, :neighborhood_id, :password, :password_confirmation)
    end
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    guardian_path(resource)
    # super
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    guardian_path(resource)
    # super(resource)
  end
end
