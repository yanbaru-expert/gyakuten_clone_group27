class TextsController < ApplicationController
  def index
    @texts = AwsText.order(id: :asc)
  end

end