class CuisinesController < ApplicationController

  def new
      @cuisine = Cuisine.new
  end

  def create
  Cuisine.create cuisine_params
  redirect_to( cuisines_path)
  end


def index
    @cuisines = Cuisine.all # returns an array of Cuisine objects
end



def show
    @cuisine = Cuisine.find params[:id]
end



def edit
  @cuisine = Cuisine.find params[:id]

end



def update
  @cuisine = Recipe.find params[:id]
  @cuisine.update cuisine_params
redirect_to cuisine_path(@cuisine.id)
end

def destroy
@cuisine = Recipe.find params[:id]
@cuisine.destroy
redirect_to (cuisines_path)
end




end # <!--class-->
