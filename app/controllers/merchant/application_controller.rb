class Merchant::ApplicationController < ApplicationController
  layout 'merchant_application'

  before_action :authenticate_merchant!

  # alias_method :current_merchant, :current_user
  # alias_method :merchant_signed_in?, :user_signed_in?
end
