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

        def info_mail(mail:, subject:, message:)
            mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

            ms_params = {
                from: 'noreply@commercialcity.cl',
                to: resource.email,
                text: message
            }

            mg_client.send_message('sandbox51940018fa6c47aca0562e6c0132a0f6.mailgun.org', ms_params)
        end

        def estate_mail(mail:, subject:, message:)
            mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

            ms_params = {
                from: 'noreply@commercialcity.cl',
                to: current_user.email,
                text: message
            }

            mg_client.send_message('sandbox51940018fa6c47aca0562e6c0132a0f6.mailgun.org', ms_params)
        end

end
