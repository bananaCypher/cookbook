class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def index_filter
    category = Category.where("lower(name) = ?", params[:name].downcase).first 
    if category
      @recipes = Recipe.where(category_id: category.id)
    else
      @recipes = Recipe.all
    end
    render 'index'
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
    ingredients = params['recipe']['ingredients'].map { |ing| Ingredient.find(ing) if ing != '' }
    ingredients.delete_at(0)
    recipe.ingredients = ingredients
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
    ingredients = params['recipe']['ingredients'].map { |ing| Ingredient.find(ing) if ing != '' }
    ingredients.delete_at(0)
    recipe.ingredients = ingredients
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
end

# URL HTTP Verb Action
# /photos/  GET index
# /photos/new GET new
# /photos POST  create
# /photos/:id GET show
# /photos/:id/edit  GET edit
# /photos/:id PATCH/PUT update
# /photos/:id DELETE  destroy