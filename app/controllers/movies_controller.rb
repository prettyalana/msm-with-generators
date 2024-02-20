class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all.order(:created_at)
    render(:template => "movie_templates/index")
  end
  def show
    id = params.fetch("an_id")
    # either id fine
    # id = params.fetch(:an_id)

    @movie = Movie.where({ :id => id })[0]
    render(:template => "movie_templates/show")
  end
end
