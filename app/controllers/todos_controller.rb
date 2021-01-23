class TodosController < ApplicationController

  def index
    @todos = Todo.order(:due_date)
    render :index
  end

end
