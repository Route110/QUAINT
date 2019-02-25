class HobbiesController < ApplicationController
before_action :authenticate_user!, :only => [:show, :index]
  def show
  	@hobby = Hobby.find(params[:id])
    @people = UsersHobby.where(hobby_id: @hobby.id).count(:hobby_id)
  end

  def add
  	hobby = Hobby.find(params[:id])
  	user = current_user
  	uh = UsersHobby.new
  	uh.user_id = user.id
  	uh.hobby_id = hobby.id
  	if uh.save
  		flash[:notice] = "趣味に追加しました"
  		redirect_to hobby_show_path
  	else
  	  flash[:notice] = "エラー：ログインしてください"
      redirect_to hobby_show_path
    end
  end
end