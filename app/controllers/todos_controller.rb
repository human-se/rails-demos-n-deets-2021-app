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

end
