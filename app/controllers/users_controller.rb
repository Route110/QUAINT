class UsersController < ApplicationController
  def show
  	@user = current_user
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def delete
  end



  private
  def user_params
    params.require(:user).permit(:postalcode, :address, :age, :email, :password, :image, :introduction)
  end
end
