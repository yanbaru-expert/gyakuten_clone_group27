class MoviesController < ApplicationController
  def index
    if params[:genre].nil? 
      @movies = Movie.page(params[:page]).per(18).where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    #   @texts = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    # elsif params[:genre] == "Php"
    #   @texts = Text.where(genre: "Php")
    # else 
    #   @texts = Text.where(genre: "AWS")
    end
      # @movies = Movie.page(params[:page]).per(18).all
  end

  def show
    @movie = Movie.find(params[:id])  
  end

end
