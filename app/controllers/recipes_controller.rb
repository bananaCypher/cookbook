class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    redirect_to(recipes_path)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    Recipe.find(params[:id]).update(recipe_params)
    redirect_to(recipes_path)
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :category_id)
  end
end

# URL HTTP Verb Action
# /photos/  GET index
# /photos/new GET new
# /photos POST  create
# /photos/:id GET show
# /photos/:id/edit  GET edit
# /photos/:id PATCH/PUT update
# /photos/:id DELETE  destroy