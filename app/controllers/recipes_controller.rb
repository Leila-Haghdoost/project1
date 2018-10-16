class RecipesController < ApplicationController

  def new
      @recipe = Recipe.new
  end

  def create
  @recipe = Recipe.create recipe_params
  # Cloudinary upload happens between .new and .save

  #was a file actually uploaded?
  if params[:file].present?
    response = Cloudinary::Uploader.upload params[:file]
    @recipe.image = response["public_id"]

    @recipe.save
  end
  redirect_to( cuisine_path(@recipe.cuisine) )
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
  # @recipe = Review.find params[:id]
  @recipe.destroy
  redirect_to (recipes_path)
  end


  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :serves, :prep, :cook, :ingredients, :instruction, :image, :cuisine_id)
  end

end # <!--class-->
