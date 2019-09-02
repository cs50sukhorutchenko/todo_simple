class ProjectsController < ApplicationController
  
  def index #list of projects with tasks
    render json: Project.all
  end

  def show #specified projiec by id
    # byebug
    render json: Project.find(params[:id])
  end

  def create #create new projict with params
    @project = Project.new(project_params)

    @project.save
    rediredt_to @project
  end

  def update #update specified project
    @project = Project.fing(params[:id])

    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def delete #delete specified project
    @project = Project.find(params[:id]).destroy
    
    redirect_to project_path
  end
  
end
