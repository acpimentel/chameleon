class MoodsController < ApplicationController

  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.find(params[:id])
      # redirect_to moods_path(@mood)
  end

  # def new
  #   @mood = Mood.new
  # end

  # def create
  #   @mood = Cocktail.new(user_params)

  #   if @cocktail.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  #   @cocktail = Cocktail.find(params[:id])
  #   @cocktail.destroy
  # end

  private

  def user_params
    params.require(:mood).permit(:name)
  end

end
