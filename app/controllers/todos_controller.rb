class TodosController < ApplicationController

  def index
    @todos = Todo.order(:due_date)
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
  end
      
  def new
    @todo = Todo.new
    render :new
  end

  def create
    @todo = Todo.new(params.require(:todo).permit(:title, :description, :due_date))
    if @todo.save
      flash[:success] = "New to-do item successfully added!"
      redirect_to todos_url
    else
      flash.now[:error] = "To-do item creation failed"
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
    render :edit
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(params.require(:todo).permit(:title, :description, :due_date))
      flash[:success] = "To-do item successfully updated!"
      redirect_to todo_url(@todo)      
    else
      flash.now[:error] = "To-do item update failed"
      render :edit
    end
  end
  
end
