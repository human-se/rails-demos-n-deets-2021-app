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

  def new
    @quiz = Quiz.find(params[:quiz_id])
    @question = Question.new
    render :new
  end

  def create
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.build(params.require(:question).permit(:question, :answer, :distractor_1, :distractor_2))
    if @question.save
      flash[:success] = "Question saved successfully"
      redirect_to quiz_questions_url(@quiz)
    else
      flash.now[:error] = "Question could not be saved"
      render :new
    end
  end

end
