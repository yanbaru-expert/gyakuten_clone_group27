class TextsController < ApplicationController
  def index
    @texs = Text.all
  end

  def show
  end
end
