class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    update_ingredients_in_recipe(recipe)
    redirect_to(recipes_path)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    update_ingredients_in_recipe(recipe)
    redirect_to(recipes_path)
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to(recipes_path)
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions, :category_id, :ingredients)
  end

  def get_ingredients_param
    ingredients = params['recipe']['ingredients'].map { |ing| Ingredient.find(ing) if ing != '' }
    ingredients.delete_at(0)
    return ingredients
  end

  def update_ingredients_in_recipe(recipe)
    recipe.ingredients = get_ingredients_param
  end
end