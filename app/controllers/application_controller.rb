class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_source

  private
    def layout_by_source
      if devise_controller?
        if resource_name == :admin
          'admin_application'
        elsif resource_name == :merchant
          'merchant_application'
        end
      else
        'application'
      end
    end
end

