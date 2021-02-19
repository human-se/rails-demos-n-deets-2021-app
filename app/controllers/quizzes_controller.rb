class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
    render :index
  end

  def show
    @quiz = Quiz.find(params[:id])
    render :show
  end

  def new
    @quiz = Quiz.new
    render :new
  end

  def create
    @quiz = Quiz.new(params.require(:quiz).permit(:title, :description))
    if @quiz.save
      flash[:success] = "New quiz successfully created!"
      redirect_to quizzes_url
    else
      flash.now[:error] = "New quiz creation failed"
      render :new
    end
  end
  
  def edit
    @quiz = Quiz.find(params[:id])
    render :edit
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(params.require(:quiz).permit(:title, :description))
      flash[:success] = "Quiz successfully updated!"
      redirect_to quiz_url(@quiz)
    else
      flash.now[:error] = "Quiz update failed"
      render :edit
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    flash[:success] = "Quiz successfully deleted!"
    redirect_to quizzes_url
  end

end
