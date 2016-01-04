class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to(categories_path)
  end

  def show
    @recipes = Category.find(params[:id]).recipes
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])
    category.update(category_params)
    redirect_to(categories_path)
  end

  def destroy
    Category.find(params[:id]).destroy
    redirect_to(categories_path)
  end

  private
  def category_params
    params.require(:category).permit(:name, :description)
  end
end