class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @answers = @question.answers
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:name)
  end
end
