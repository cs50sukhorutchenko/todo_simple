class ProjectsController < ApplicationController
  
  def index #list of projects with tasks
    render json: Project.all
  end

  def show #specified projiec by id
    # byebug
    render json: Project.find(params[:id])
  end

  def create #create new projict with params
   
    render json: project = Project.new(project_params)

    if project.save
      render json: project
    else
      render json: 'new'
    end
  end

  def update #update specified project
    render json: project = Project.fing(params[:id])

    if project.update(project_params)
      render json: project
    else
      render json: 'edit'
    end
  end

  def delete #delete specified project!!!!
    project = Project.find(params[:id]).destroy
    
    redirect_to project_path
  end
  
end
