class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:question_id])
    @answer.question = @question
    @answer.save
    redirect_to question_path(@question)
  end

  private

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
