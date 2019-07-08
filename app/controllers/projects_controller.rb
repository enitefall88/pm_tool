class ProjectsController < ApplicationController
    def new
        @project = Project.new
    end

    def create
    #render plain: params[:post].inspect
    @project = Project.new params.require(:project).permit(:title, :description, :due_date)
    if @project.save 
        flash[:notice] = "Project created"
        redirect_to project_path(@project)
    else
        render 'new'
        end
    end
    
    def show
        @project = Project.find params[:id]
        @task = Task.new
        @tasks = @project.tasks.order(created_at: :desc) # @product.tasks -selects all tasks 
        #with the foreing key that belongs to that project?
        #@tasks_completed = @project.tasks.completed.true
        
        #@tasks_not_completed = @project.tasks.completed.false
        end

    def index 
        @projects = Project.all
    end

    def edit
    @project = Project.find params[:id] #Project.find(params[:id])
    
    end

    def update
    @project = Project.find params[:id]
    if @project.update params.require(:project).permit(:title, :description, :due_date) # here how to check if it is the same?
        redirect_to project_path(@project)
        else # that else does not work if we don`t change anything
         render :edit
        end        
    end

    def destroy
        @project = Project.find params[:id]
        @project.destroy
        redirect_to projects_path
    end

end

