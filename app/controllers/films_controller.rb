class FilmsController < ApplicationController
  def index
    @films = Film.all
  end

  def new
    @film = Film.new
  end

  def create
    # @film = Film.new
    # @film.title = params[:film][:title]
    # @film.year = params[:film][:year]
    film_params = params.require(:film).permit(:title, :year)
    @film = Film.new(film_params)
    if @film.save
      redirect_to films_index_path
    end
  end
end
