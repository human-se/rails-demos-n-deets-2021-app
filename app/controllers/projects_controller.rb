class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find(params[:id])
    render :show
  end

  def new
    @project = Project.new
    render :new
  end

  def edit
    @project = Project.find(params[:id])
    render :edit
  end

  def create
    @project = Project.new(params.require(:project).permit(:title, :description))
    if @project.save
      flash[:success] = "New project successfully created!"
      redirect_to projects_url  
    else
      flash.now[:error] = "New project failed to be created."
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(params.require(:project).permit(:title, :description))
      flash[:success] = 'Project was successfully updated!'
      redirect_to project_url(@project)
    else
      flash.now[:error] = 'Project failed to be updated.'
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:success] = 'Project was successfully deleted.'
    redirect_to projects_url
  end

end
