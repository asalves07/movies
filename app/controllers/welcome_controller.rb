class WelcomeController < ApplicationController

  def index
    params[:term].blank? ? @movies = JSON.parse(themovies_service.popular.body) : @movies = JSON.parse(themovies_service.search.body)
  end


  def themovies_service
    @_themovies_service ||= Themovies.new(params[:term])
  end
end
