class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  	@hobbies = Hobby.where(category_id: @category.id).page(params[:page]).per(10)
  end
end