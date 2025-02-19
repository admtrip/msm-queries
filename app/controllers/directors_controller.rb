class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ :template => "director_templates/list" })
  end

  def show
    the_id = params.fetch("id") # Updated to "id" instead of "the_id"
    
    @the_director = Director.find_by(id: the_id)

    render({ :template => "director_templates/details" })
  end
end
