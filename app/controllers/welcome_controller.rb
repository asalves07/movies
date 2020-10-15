class WelcomeController < ApplicationController

  def index
    @movies = JSON.parse(themovies_service.popular.body)
  end

  def search
    unless params[:term].blank?
      @movies = JSON.parse(themovies_service.search.body)
    else
      render :index
    end 
  end


  def themovies_service
    @_themovies_service ||= Themovies.new(params[:term])
  end
end
