class Themovies
  include HTTParty
  base_uri 'https://api.themoviedb.org/3'

  def initialize(query)
    @options = {query: {api_key: ENV["api_key"], language: "pt-BR", query: query, page: 1 }}
  end

  def popular
    self.class.get('/movie/popular', @options)    
  end

  def search
    self.class.get('/search/multi', @options) 
  end

  def movies
    self.class.get('/search/movie', @options) 
  end

  def tv
    self.class.get('/search/tv', @options) 
  end

  def people
    self.class.get('/search/person', @options) 
  end

end