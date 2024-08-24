class UsersController < ApplicationController
  before_action :authenticate_user!

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to edit_user_registration_path, notice: 'Settings updated successfully.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:timezone)
  end
end
