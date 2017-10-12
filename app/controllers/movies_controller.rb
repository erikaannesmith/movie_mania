class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
    Movie.create(movie_params)
    redirect_to "/movies"
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.update(params[:id], movie_params)
    redirect_to "/movies/#{movie.id}"
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description)
  end
end
