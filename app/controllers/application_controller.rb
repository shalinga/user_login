class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authorize_current_user?
    unless current_user.admin?
      redirect_to members_dashboard_path()
    end
  end
  
  def authorize_tos_user?
    unless current_user.admin?
      redirect_to terms_of_services_path()
      # return false
    end
  end

end
