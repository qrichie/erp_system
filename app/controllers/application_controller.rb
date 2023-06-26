class ApplicationController < ActionController::Base

  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  add_flash_types :danger, :info, :warning, :success, :messages

  before_action :set_locale

  def set_locale
    I18n.locale = params[:lang] || locale_from_header || I18n.default_locale
  end

  def locale_from_header
    request.env.fetch('HTTP_ACCEPT_LANGUAGE', '').scan(/[a-z]{2}/).first
  end

  private

  def user_not_authorized
    flash[:danger] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
 

end
