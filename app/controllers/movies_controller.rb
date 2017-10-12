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
    Movie.create(title: params[:movie][:title], description: params[:movie][:description])
    redirect_to "/movies"
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    movie = Movie.update(params[:id], { title: params[:movie][:title], description: params[:movie][:description] })
    redirect_to "/movies/#{movie.id}"
  end

  def destroy
    binding.pry
  end
end
