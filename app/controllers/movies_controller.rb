class MoviesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @top_rated_movies = Movie.top_rated_movies
    # binding.pry
  end

  #   if params[:search].present?
  #     @movies = Movie.search(params[:search])
  #   else
  #     @movies = Movie.top_rated_movies #dream driving - this seems like an odd way to accomplish this but oh well. 
  #   end
  # end

end