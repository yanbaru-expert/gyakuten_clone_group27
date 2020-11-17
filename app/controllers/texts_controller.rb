class TextsController < ApplicationController
  def index
    if params[:genre].nil? 
      @texts = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    elsif params[:genre] == "Php"
      @texts = Text.where(genre: "Php")
    else 
      @texts = Text.where(genre: "AWS")
    end
  end

  def show
    @text = Text.find(params[:id])
  end
end
