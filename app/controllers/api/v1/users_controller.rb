class Api::V1::UsersController<ApplicationController

  def create
    user = User.create(user_params) if matching_passwords?
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def matching_passwords?
    params[:password] == params[:password_confirmation]
  end

end