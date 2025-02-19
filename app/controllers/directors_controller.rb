class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render({ template: 'director_templates/list' })
  end

  def show
    @the_director = Director.find_by(id: params[:id])
    @movies = Movie.where(director_id: @the_director.id)
    render({ template: 'director_templates/details' })
  end

  def eldest
    @the_director = Director.where.not(dob: nil).order(:dob).first
    render({ template: 'director_templates/details' })
  end

  def youngest
    @the_director = Director.where.not(dob: nil).order(dob: :desc).first
    render({ template: 'director_templates/details' })
  end
end
