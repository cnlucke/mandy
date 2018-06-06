class Admin::UsersController < Admin::AdminController
  def index
    @users = User.order('name ASC')
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to admin_users_url
    else
      render 'edit'
    end
  end

  def cancel_selected_print_plan
    @user = User.find(params[:id])

    @user.update(selected_print_plan: nil)

    redirect_to :back
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
                                 :password, :password_confirmation)
  end
end
