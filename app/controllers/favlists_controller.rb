class FavlistsController < ApplicationController

  def new
  end

  def create
  end

  def index
      @favlists = Favlist.all

  end

  def show
    @favlist = Favlist.find params[:id]

  end


  def edit
      # @favlist = Favlist.find params[:id]
  end

  def update
  end

  def destroy
  end

  # private
  # def favlist_params
  #   params.require(:favlist).permit(:name, :recipe_id)
  # end
end
