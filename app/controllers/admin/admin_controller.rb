class Admin::AdminController < ApplicationController
  layout 'admin'

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def authorize!
    redirect_to new_admin_session_url, alert: "Not authorized" if current_user.nil?
  end

  before_action :authorize!
end
