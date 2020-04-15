class MoviesController < ApplicationController

  def index
    # @moods = Mood.all
    @movies = Movie.all
  end

  # def show
  #   @movies = Movie.find(params[:id])
  # end

  #  private

  # def user_params
  #   params.require(:mood).permit(:mood_name)
  # end


end
