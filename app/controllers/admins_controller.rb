class AdminsController < ApplicationController
  def index
  end

  def hobby_new
  	@hobby = Hobby.new
  	@hobby.build_narrow
    @hobby.build_first_step
  end

  def hobby_create
  	hobby = Hobby.new(hobby_params)
    hobby.save
    redirect_to hobby_new_path
  end

  def category_new
    @category = Category.new
  end

  def category_create
    category = Category.new(category_params)
    category.save
    redirect_to category_new_path
  end

  private
  def hobby_params
  	params.require(:hobby).permit(:name, :image, :category_id, :introduction, narrow_attributes: [:id, :hobby_id, :active_point, :major_point, :gain_point, :appeal_point, :health_point, :relax_point, :concentration_point, :cooperate_point, :consider_point, :cost_point, :artistic_point], first_step_attributes: [:id, :hobby_id, :introduction, :cost, :item])
  end

  def category_params
    params.require(:category).permit(:category, :image)
  end
end