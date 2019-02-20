class MatchingController < ApplicationController
  def show
  end

  def result_show
    @active_point = params[:page][:active].to_i
    @major_point = params[:page][:major].to_i
    @gain_point = params[:page][:gain].to_i
    @appeal_point = params[:page][:appeal].to_i
    @health_point = params[:page][:health].to_i
    @relax_point = params[:page][:relax].to_i
    @concentrate_point = params[:page][:concentrate].to_i
    @cooperate_point = params[:page][:cooperate].to_i
    @consider_point = params[:page][:consider].to_i
    @cost_point = params[:page][:cost].to_i
    @artistic_point = params[:page][:artistic].to_i
    @actives = HobbiesRating.where(rating_id: '1')
    @majors = HobbiesRating.where(rating_id: '2')
    @gains = HobbiesRating.where(rating_id: '3')
    @appeals = HobbiesRating.where(rating_id: '4')
    @healthes = HobbiesRating.where(rating_id: '5')
    @relaxes = HobbiesRating.where(rating_id: '6')
    @concentrates = HobbiesRating.where(rating_id: '7')
    @cooperates = HobbiesRating.where(rating_id: '8')
    @considers = HobbiesRating.where(rating_id: '9')
    @costs = HobbiesRating.where(rating_id: '10')
    @artistics = HobbiesRating.where(rating_id: '11')
  end
end