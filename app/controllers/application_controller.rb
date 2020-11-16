class ApplicationController < ActionController::Base
    # before_action :configure_permitted_parameters, if: :devise_controller?

    # protected

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar])
    #     devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :url, :avatar])
    # end

        rescue_from CanCan::AccessDenied do |exception|
            respond_to do |format|
                format.html { redirect_to root_url, alert: exception.message }
            end
        end
end
