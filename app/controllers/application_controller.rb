# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_time_zone, if: :user_signed_in?
  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:timezone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:timezone])
  end

  private

  def set_time_zone
    Time.zone = current_user.timezone || 'UTC'
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
