class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    redirect_to project_path(@project)
  end

  def show
    @project = Project.find(params[:id])
    @task = Task.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])
    redirect_to :action => "index"
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end
end
