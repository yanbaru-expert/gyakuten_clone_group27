class MoviesController < ApplicationController
  def index
    if params[:genre].nil? 
      @movies = Movie.page(params[:page]).per(18).where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    elsif params[:genre] == "Live"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Live")
    elsif params[:genre] == "Talk"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Talk")
    elsif params[:genre] == "Movie"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Movie")
    elsif params[:genre] == "Php"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Php")
    elsif params[:genre] == "Writing"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Writing")
    elsif params[:genre] == "Marketing"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Marketing")
    elsif params[:genre] == "Money"
      @movies = Movie.page(params[:page]).per(18).where(genre: "Money")
    end
      # @movies = Movie.page(params[:page]).per(18).all
  end

  def show
    @movie = Movie.find(params[:id])  
  end

end
