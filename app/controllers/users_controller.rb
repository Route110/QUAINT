class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  	@user = User.find(params[:id])
    @hobbies = UsersHobby.where(user_id: @user.id).page(params[:page]).per(5)
    @communities = UsersCommunity.where(user_id: @user.id)
  end

  def hobby_delete
    uh = UsersHobby.find(params[:hobby_id])
    if uh.destroy
      flash[:notice] = "趣味を削除しました"
      redirect_to user_path
    else
      flash[:notice] = "趣味の削除に失敗しました"
      redirect_to user_path
    end
  end

  def community_delete
    uci = params[:users_community_id]
    uc = UsersCommunity.find(uci)
    if uc.destroy
      flash[:notice] = "趣味を削除しました"
      redirect_to user_path
    else
      flash[:notice] = "趣味の削除に失敗しました"
      redirect_to user_path
    end
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

  def hobby_index
    @user = User.find(params[:id])
    @hobby = Hobby.find(params[:hobby_id])
    @total = Record.where(user_id: @user.id).where(hobby_id: @hobby.id).pluck(:time)
    @record = Record.new
    @records = Record.where(user_id: @user.id).where(hobby_id: @hobby.id).order('date ASC').group(:date).sum(:time)
    @rec = Record.where(user_id: @user.id).where(hobby_id: @hobby.id).order('date ASC').page(params[:page]).per(5)
  end

  def record_create
    user = params[:user_id]
    hobby = params[:hobby_id]
    record = Record.new(record_params)
    record.user_id = user
    record.hobby_id = hobby
    if record.save
      flash[:notice] = "活動を記録しました"
      redirect_to users_hobby_path(user)
    else
      flash[:notice] = "エラー：入力に誤りがあります"
      redirect_to users_hobby_path(user)
    end
  end

  def record_delete
    record = Record.find(params[:record_id])
    record.destroy
    flash[:notice] = "記録を削除しました"
    redirect_to users_hobby_path(params[:id])
  end

  def cancel_show
  end

  def cancel_delete
    user = User.find(current_user.id)
    user.destroy
    flash[:notice] = "退会しました"
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :address, :sex, :age, :job, :email, :password, :image, :introduction)
  end
  def record_params
    params.require(:record).permit(:time, :date, :comment)
  end
end
