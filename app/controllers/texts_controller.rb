class TextsController < ApplicationController
  def index
    @texts = AwsText.order(id: :asc)
  end

  def show
    @text = AwsText.find(params[:id])  
  end
end