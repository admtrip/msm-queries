class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    render({ template: 'actor_templates/list' })
  end

  def show
    @the_actor = Actor.find_by(id: params[:id])
    @characters = @the_actor.characters
    @movies = @the_actor.movies.includes(:director)
    render({ template: 'actor_templates/details' })
  end
end
