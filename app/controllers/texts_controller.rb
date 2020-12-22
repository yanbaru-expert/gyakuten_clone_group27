class TextsController < ApplicationController
  def index
    if params[:genre].nil? 
      @eq = Text.where(genre: ["Ruby on Rails", "Git","Basic","Ruby"]).ransack(params[:q])
      @texts = @eq.result.order(:id)
    else
      @eq = Text.where(genre: params[:genre]).ransack(params[:q])
      @texts = @eq.result.order(:id)
    end
  end

  def show
    @text = Text.find(params[:id])
  end
end
