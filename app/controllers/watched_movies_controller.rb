class WatchedMoviesController < ApplicationController
  def create
    binding.pry
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.create!(movie_id: @movie.id)
  end

  def destroy
    binding.pry
    @movie = Movie.find(params[:movie_id])
    current_user.watched_movies.find_by(movie_id: @movie.id).destroy!
  end
end
