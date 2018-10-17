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
    if @current_user.favlists.present?
      @list = @current_user.favlists.first
    else
      @list = Favlist.new
      @list.name = "My favourite list"
      @list.user_id = @current_user.id
    end
  end

  def favourite
    recipe = Recipe.find params[:id]
    # the current user doesn't have favourite list, create a list first
    list = @current_user.favlists.first
    # list = @current_user.favlists.first
    # unless list.recipes.include? recipe
    list.recipes << recipe
    list.save
    # end
    # raise "hell"
    redirect_to recipe_path(recipe)
  end

  def unfavourite
    recipe = Recipe.find params[:id]
    list = @current_user.favlists.first
    list.recipes.delete(recipe)
    list.save
    # raise "hell"
    redirect_to recipe_path(recipe)
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
