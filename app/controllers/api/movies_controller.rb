class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      name: params[:name],
      duration: params[:duration],
      photo: params[:photo]
      )

    if @movie.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder'
    end
  end

  def show
    movie_id = params[:id]
    @movie = Movie.find_by(id: movie_id)
    render 'show.json.jbuilder'
  end

  def destroy
    movie = params[:id]
    @movie = Movie.find_by(id: movie_id)
  end


end
