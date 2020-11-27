class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
  end

  private
  def question_params
    params.permit(:title, :detail)
  end
end
