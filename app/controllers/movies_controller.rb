class MoviesController < ApplicationController

  def index
    params[:genre]
    if params[:genre].nil? 
      @movies = Movie.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"]).page(params[:page]).per(18)
    else
      @movies = Movie.where(genre: params[:genre]).page(params[:page]).per(18)
    end
  end

  def show
    @movie = Movie.find(params[:id])  
  end

end
