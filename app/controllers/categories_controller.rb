class CategoriesController < ApplicationController
  def index
    redirect_to(recipes_path)
  end

  def show
    @recipes = Recipe.where(category_id: params[:id])
  end
end