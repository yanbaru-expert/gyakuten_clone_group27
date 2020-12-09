class TextsController < ApplicationController
  def index
   
    if params[:genre].nil? 
      @texts = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    else
      @texts = Text.where(genre: params[:genre])
    end
    # @text = Text.new
    # @text = Text.find_by(params[:id])
  end

  def show
    # binding.pry
    @text = Text.find(params[:id])
  end
end
