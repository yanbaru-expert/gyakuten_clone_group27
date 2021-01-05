class WatchedMoviesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    # binding.pry
    current_user.watched_movies.create!(movie_id: @movie.id)
    # current_user.watched_movies.create!(movie_id: params[:movie_id])
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.watched_movies.find_by(movie_id: params[:movie_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
