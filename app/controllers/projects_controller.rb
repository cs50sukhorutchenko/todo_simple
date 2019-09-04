class ProjectsController < ApplicationController
  
  def index 
    render json: Project.all
  end

  def show 
    render json: Project.find(params[:id])
  end

  def create 
   
    project = Project.new(project_params)

    if project.save
      render json: project
    else
      render 'new'
    end
  end

  def update 
    project = Project.fing(params[:id])

    if project.update(project_params)
      render json: project
    else
      render 'edit'
    end
  end

  def delete 
    project = Project.find(params[:id]).destroy
    
    redirect_to project_path
  end
  
end
