class RecipesController < ApplicationController

  def new
      @recipe = Recipe.new
  end

  def create
  Recipe.create recipe_params
  redirect_to( recipes_path)
  end


  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]

  end

  def update
    @recipe = Recipe.find params[:id]
    @recipe.update recipe_params
  redirect_to recipe_path(@recipe.id)
  end

  def destroy
  @recipe = Recipe.find params[:id]
  @recipe.destroy
  redirect_to (recipes_path)
  end


  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :serves, :prep, :cook, :ingredients, :instruction, :image, :cuisine_id)
  end

end # <!--class-->
