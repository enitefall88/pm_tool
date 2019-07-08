class TasksController < ApplicationController
  # why don`t we need a new one? `Cause it renders it?

    def create
    @project = Project.find params[:project_id] # why not find params[:id]?  
    @task = Task.new params.require(:task).permit(:title, :body, :due_date, :completed)
    @task.project = @project #@task.project method accesses foreign project key here?
    if @task.save
        redirect_to project_path(@project)
    else
        render 'projects/show' #when is else hit?
        end
    end


    def destroy
    @task = Task.find params[:id]
    @task.destroy
    redirect_to project_path(@task.project) #@task.project refetences project_id as a foreign key
    end # that`s why @task.project is effectively sends to show project

end
