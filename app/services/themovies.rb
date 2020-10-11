class Themovies
  include HTTParty
  base_uri 'https://api.themoviedb.org/3'

  def initialize()
    @options = {query: {api_key: ENV["api_key"], language: "pt-BR", page: 1 }}
  end

  def popular
    self.class.get('/movie/popular', @options)    
  end

  def search
    self.class.get('/search/multi', @options) 
  end

end