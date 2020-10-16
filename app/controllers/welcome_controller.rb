class WelcomeController < ApplicationController

  def index
    @movies = JSON.parse(themovies_service.popular.body)
  end

  def search
    unless params[:term].blank?
      @search = JSON.parse(themovies_service.search.body)
      @movies = JSON.parse(themovies_service.movies.body)
      @tv = JSON.parse(themovies_service.tv.body)
      @people = JSON.parse(themovies_service.people.body)
    else
      render :index
    end 
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.erb
    end
  end

  def themovies_service
    @_themovies_service ||= Themovies.new(params[:term])
  end

end
