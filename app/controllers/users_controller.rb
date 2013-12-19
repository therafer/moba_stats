class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
  end

  def user_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
    )
  end

end
