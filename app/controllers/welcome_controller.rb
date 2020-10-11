class WelcomeController < ApplicationController

  def index
    @popular = JSON.parse(themovies_service.popular.body)
  end

  def themovies_service
    @_themovies_service ||= Themovies.new
  end
end
