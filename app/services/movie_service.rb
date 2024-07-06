class MovieService
  
  def self.conn
    conn = Faraday.new(url: "https://api.themoviedb.org")
  end
  
  def self.search(search)
    # input -> params[:search]
    # output -> API call response parsed into JSON
    response = conn.get("/3/search/movie?query=#{search}&api_key=5293244a04fec4031b9592f2a2cdccd4")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:results]
  end

  def self.top_rated_movies
    response = conn.get("/3/discover/movie?sort_by=vote_average.desc&api_key=5293244a04fec4031b9592f2a2cdccd4&page=1&vote_count.gte=5000&with_original_language=en")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:results]
  end
end