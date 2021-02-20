class QuestionsController < ApplicationController

  def index
    @quiz = Quiz.find(params[:quiz_id])
    @questions = @quiz.questions
    render :index
  end

  def show
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    render :show
  end

end
