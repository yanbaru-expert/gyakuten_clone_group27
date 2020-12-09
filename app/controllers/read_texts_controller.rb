class ReadTextsController < ApplicationController

  def create
    current_user.read_texts.create!(text_id: params[:text_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @read_text = Read_text.find_by(post_id: params[:post_id], user_id: current_user.id)
    @read_text.destroy
    redirect_back(fallback_location: root_path)
  end
end
