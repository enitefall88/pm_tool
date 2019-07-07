class ProjectsController < ApplicationController
    def new
        @project = Project.new
    end

    def create
    #render plain: params[:post].inspect
    @project = Project.new params.require(:project).permit(:title, :description, :due_date)
    if @project.save 
    redirect_to project_path(@project)
    else
        render 'new'
        end
    end
    
    def show
        @project = Project.find params[:id]
    end

    def index 
        @projects = Project.all
    end

end

