class TextsController < ApplicationController
  def index
  #  binding.pry
    if params[:genre].nil? 
      @eq = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"]).ransack(params[:q])
      @texts = @eq.result.order(:id)
    else
      @texts = Text.where(genre: params[:genre])
    end
  end

  def show
    @text = Text.find(params[:id])
  end
end
