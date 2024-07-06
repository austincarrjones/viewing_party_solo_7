class MoviesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    if params[:search].present?
      @search_results = Movie.search(params[:search])
    else
      @top_rated_movies = Movie.top_rated_movies
    end
  end
end