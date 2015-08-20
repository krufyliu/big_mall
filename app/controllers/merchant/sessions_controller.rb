class Merchant::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
  layout false, only: [:new]
  before_action :configure_permitted_parameters, if: :devise_controller?
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:signin)}
    end
end
