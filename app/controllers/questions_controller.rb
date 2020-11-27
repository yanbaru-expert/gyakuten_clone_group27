class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def create
  end
end
