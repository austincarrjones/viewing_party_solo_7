class Movie
  def initialize(movie_data)
    @title = movie_data[:title]
    @vote_average = movie_data[:vote_average]
  end
end