class FilmsController < ApplicationController
  before_action :runs_before_action
  after_action :runs_after_action

  before_action :set_film_total
  
  def index
    @films = Film.all
    @film_total = Film.all.length
  end

  def new
    @film = Film.new
    @film_total = Film.all.length
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

  def runs_before_action
    logger.info
  end

  def runs_after_action
    logger.info
  end

  def set_film_total
    @film_total = Film.all.length
  end
end
