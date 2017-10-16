class MoviesController < ApplicationController
  def index
    if params[:director_id]
      @movies = Movie.where(director_id: params[:director_id])
    else
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @director = Director.find(params[:director_id])
    @movie    = Movie.new
  end

  def create
    director = Director.find(params[:director_id])
    director.movies.create(movie_params)
    redirect_to "/directors/#{director.id}/movies"
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
