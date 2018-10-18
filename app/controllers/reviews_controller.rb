class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end

  def create
    @review = Review.create({:rating => params[:rating], :comment => params[:comment]})



    # raise "hell"
    if @review.persisted?
      @review.user_id = @current_user.id
      @review.recipe_id = params[:recipe_id]
      @review.save
      # raise "hell"
      redirect_to( recipe_path(@review.recipe) )
    else
    render :new
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
  end

  def edit
  end

  def update
  end


  def destroy
    @review = Review.find params[:id]
    @review.destroy
    redirect_to (reviews_path)
  end


  private
  # strong params, the doorman for the form fields
  def review_params
    params.require(:review).permit(:rating, :comment, :recipe_id)
  end



end # <!--class-->
