class Admin::ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout 'admin'

  def after_sign_in_path_for(admin)
    conferences_path
  end
end