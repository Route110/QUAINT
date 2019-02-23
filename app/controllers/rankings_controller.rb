class RankingsController < ApplicationController
  def index
	@ranking = UsersHobby.group(:hobby_id).order('count(hobby_id) desc')
	men = User.where(sex: '男性').pluck(:id)
	women = User.where(sex: '女性').pluck(:id)
	young = User.where(age: ['10','20','30']).pluck(:id)
	middle = User.where(age: ['40','50','60']).pluck(:id)
	older = User.where(age: ['70','80','90']).pluck(:id)
	@men = UsersHobby.where(user_id: men).group(:hobby_id).order('count(hobby_id) desc')
	@women = UsersHobby.where(user_id: women).group(:hobby_id).order('count(hobby_id) desc')
	@young = UsersHobby.where(user_id: young).group(:hobby_id).order('count(hobby_id) desc')
	@middle = UsersHobby.where(user_id: middle).group(:hobby_id).order('count(hobby_id) desc')
	@older = UsersHobby.where(user_id: older).group(:hobby_id).order('count(hobby_id) desc')
  end
end