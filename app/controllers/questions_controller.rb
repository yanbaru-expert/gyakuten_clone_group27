class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: :desc)
    @question = Question.new
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.create(question_params)
    if @question.save
    redirect_to action: :index
    else
      @questions = Question.order(id: :desc)
      render :index
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
