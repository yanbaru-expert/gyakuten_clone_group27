class ReadTextsController < ApplicationController

  def create
    @text = Text.find(params[:text_id])
    current_user.read_texts.create!(text_id: @text.id)
    # current_user.read_texts.create!(text_id: params[:text_id])
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.read_texts.find_by(text_id: params[:text_id]).destroy!
    redirect_back(fallback_location: root_path)
  end
end
