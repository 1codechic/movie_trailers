class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      name: params[:name],
      duration: params[:duration],
      trailer_url: params[:trailer_url]
      )

    if @movie.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def show
    contact_id = params[:id]
    @movie = Movie.find_by(id: contact_id)
    render 'show.json.jbuilder'
  end

end
