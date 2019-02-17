class RankingsController < ApplicationController
  def index
	@ranking = UsersHobby.group(:hobby_id).order('count(hobby_id) desc')
	men = User.find_by(sex: '男性')
	women = User.find_by(sex: '女性')
	@men = UsersHobby.where(user_id: men.id).group(:hobby_id).order('count(hobby_id) desc')
	@women = UsersHobby.where(user_id: women).group(:hobby_id).order('count(hobby_id) desc')
  end
end
