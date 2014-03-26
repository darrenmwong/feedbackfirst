class UsersController < ApplicationController
  def create
    @user=User.new(user_params)
    if @user.save
      sign_in @user
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end