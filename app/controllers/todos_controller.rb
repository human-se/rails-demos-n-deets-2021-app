class TodosController < ApplicationController

  def index
    @todos = Todo.order(:due_date)
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
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
