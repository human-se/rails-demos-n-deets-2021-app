class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_permission, only: [:edit, :update, :destroy]

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

  def edit
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    render :edit
  end

  def update
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    if @question.update(params.require(:question).permit(:question, :answer, :distractor_1, :distractor_2))
      flash[:success] = "Question updated successfully"
      redirect_to quiz_question_url(@quiz, @question)
    else
      flash.now[:error] = "Question could not be updated"
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:quiz_id])
    @question = @quiz.questions.find(params[:id])
    @question.destroy
    flash[:success] = "Question deleted successfully"
    redirect_to quiz_questions_url(@quiz)
  end

  def require_permission
    quiz = Question.find(params[:id]).quiz
    if quiz.creator != current_user
      redirect_to quiz_path(quiz), flash: { error: "You do not have permission to do that." }
    end
  end

end
