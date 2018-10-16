class CuisinesController < ApplicationController

  def new
      @cuisine = Cuisine.new
  end

  def create
    # Cuisine.create( artist_params )

    @cuisine = Cuisine.create (cuisine_params)
  # Cloudinary upload happens between .new and .save
  #was a file actually uploaded?
  if params[:file].present?
    response = Cloudinary::Uploader.upload params[:file]
    @cuisine.image = response["public_id"]


    @cuisine.save
  end
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
  @cuisine = Cuisine.find params[:id]
  @cuisine.update cuisine_params
redirect_to cuisine_path(@cuisine.id)
end

def destroy
@cuisine = Cuisine.find params[:id]
@cuisine.destroy
redirect_to (cuisines_path)
end


  private
  def cuisine_params
    params.require(:cuisine).permit(:name, :image, :cuisine_id)
  end



end # <!--class-->
