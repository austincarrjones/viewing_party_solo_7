class MoviesController < ApplicationController
  def index
    # @user = User.find(params[:user_id])
    # if params[:search].present?
    #   @search_results = MovieService.search(params[:search])
    # else
    #   @top_rated_movies = MovieService.top_rated_movies
    # end
    
    @user = User.find(params[:user_id])
    if params[:search].present?
      @search_results = MovieService.search(params[:search]).map do |movie_data|
        Movie.new(movie_data)
        #grabbing each array of movie hashes, and passing the block variable into a constructor (PORO initialize) 
      end
    else
      @top_rated_movies = MovieService.top_rated_movies
    end
  end
end