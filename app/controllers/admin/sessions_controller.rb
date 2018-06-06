class Admin::SessionsController < Admin::AdminController
  # skip_before_action :authorize!, only: %w(new create)

  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_dashboard_url, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_admin_session_url, notice: "Logged out!"
  end
end
