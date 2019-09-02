class ProjectsController < ApplicationController
  
  def index #list of projects with tasks
    render json: Project.all
  end

  def show #specified projiec by id
    # byebug
    render json: Project.find(params[:id])
  end

  def create #create new projict with params
    @project = Article.new(project_params)

    @project.save
    rediredt_to @project
  end

  def update #update specified project
  end

  def delete #delete specified project
  end
  
end
