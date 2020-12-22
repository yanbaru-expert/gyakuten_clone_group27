class TextsController < ApplicationController
  def index
    # binding.pry
    if params[:genre].nil? 
      @eq = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"]).ransack(params[:q])
    else
      @eq = Text.where(genre: params[:genre]).ransack(params[:q])
    end
      @texts = @eq.result.order(:id)
  end

  def show
    @text = Text.find(params[:id])
  end
end
