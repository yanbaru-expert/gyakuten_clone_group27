class TextsController < ApplicationController
  def index
    if params[:genre].nil? 
      @texts = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"])
    else
      @texts = Text.where(genre: params[:genre])
    end

    @text = Text.new
  end

  def show
    @text = Text.find(params[:id])
  end
end
