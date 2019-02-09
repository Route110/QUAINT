class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    @records = Record.where(user_id: @user.id)
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
    params.require(:user).permit(:name, :address, :sex, :age, :job, :email, :password, :image, :introduction)
  end
end
