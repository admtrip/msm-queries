class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render({ template: 'movie_templates/list' })
  end

  def show
    @the_movie = Movie.find_by(id: params[:id])
    render({ template: 'movie_templates/details' })
  end
end
