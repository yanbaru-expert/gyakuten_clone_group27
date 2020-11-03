class TextsController < ApplicationController
  def index
    binding.pry
    @texs = Text.all
  end

  def show
  end
end
