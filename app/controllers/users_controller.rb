class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    @hobbies = UsersHobby.where(user_id: @user.id)
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

  def hobby_index
    @user = User.find(params[:id])
    @hobby = Hobby.find(params[:hobby_id])
    @record = Record.new
  end

  def record_create
    user = params[:user_id]
    hobby = params[:hobby_id]
    record = Record.new(record_params)
    record.user_id = user
    record.hobby_id = hobby
    if record.save
        redirect_to users_hobby_path(hobby)
    else 
      flash[:notice] = "エラー：入力に誤りがあります"
      redirect_to users_hobby_path(hobby)
    end
  end



  private
  def user_params
    params.require(:user).permit(:name, :address, :sex, :age, :job, :email, :password, :image, :introduction)
  end
  def record_params
    params.require(:record).permit(:time, :date, :comment)
  end
end
