class MoviesController < ApplicationController

  
  def index
      @movies = Movie.page(params[:page]).per(18).all
      # @words = Word.page(params[:page]).per(PER)
  end

  def show
    @movie = Movie.find(params[:id])  
  end

end
