class DirectorsController < ApplicationController
  def new
    @director = Director.new 
  end

  def create
    @director = Director.create(director_params)
    redirect_to "/directors/#{@director.id}"
  end

  def show
    @director = Director.find(params[:id])
  end


  private

  def director_params
    params.require(:director).permit(:name)
  end

end
