class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if current_user.try(:admin?)
      return rails_admin_path
        else if current_user.try(:developer?)
          return projects_developer_path
        else
          return projects_path
        end
    end
  end

  def authenticate_admin
    redirect_to "http://localhost:3000" unless current_user.try(:admin?)
  end
end
