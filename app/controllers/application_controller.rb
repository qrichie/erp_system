class ApplicationController < ActionController::Base

  include Pundit::Authorization
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  add_flash_types :danger, :info, :warning, :success, :messages


  private

  def user_not_authorized
    flash[:danger] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
 

end
