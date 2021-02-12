class TodosController < ApplicationController

  def index
    @todos = Todo.order(:due_date)
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    flash[:success] = "The to-do item was successfully destroyed."
    redirect_to todos_url
  end

end
