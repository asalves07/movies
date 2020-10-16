class MoviesController < ApplicationController
  before_action  :authenticate_user!
  before_action :set_movie, only: [:edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def edit
  end

  def create
    @movie = Movie.new movie_params
    if @subject.save
      redirect_to root_path, notice: 'Movie was successfully created.'
    else
      ####
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movies_path, notice: 'Movie was successfully updated.'
    else
      render :edit 
    end
  end

  def destroy
    if @movie.destroy
      redirect_to movies_path, notice: 'Movie was successfully destroyed.'
    else
      render :index
    end
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:adult, :backdrop_path, :homepage, :imdb, 
                                  :original_language, :original_title, :overview,
                                  :popularity, :poster_path, :runtime, :status, 
                                  :title, :vote_average, :vote_count, :release_date)
  end
end
