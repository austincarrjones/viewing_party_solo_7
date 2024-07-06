class Movie < ApplicationRecord
  def self.top_rated_movies
    conn = Faraday.new(url: "https://api.themoviedb.org")
    response = conn.get("/3/discover/movie?sort_by=vote_average.desc&api_key=5293244a04fec4031b9592f2a2cdccd4&page=1&vote_count.gte=5000&with_original_language=en")

    json = JSON.parse(response.body, symbolize_names: true)
    json[:results]
    # binding.pry
  end

  def self.search(search)
    conn = Faraday.new(url: "https://api.themoviedb.org")
    response = conn.get("/search/movie?query=#{search}&api_key=5293244a04fec4031b9592f2a2cdccd4")
    
    json = JSON.parse(response.body, symbolize_names: true)
    json[:results]
    # binding.pry
  end
end