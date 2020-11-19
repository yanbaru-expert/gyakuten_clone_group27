class LinesController < ApplicationController
  def index
    binding.pry
    @lines = Line.all
  end
end
