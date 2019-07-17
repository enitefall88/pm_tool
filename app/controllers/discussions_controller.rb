class DiscussionsController < ApplicationController
    def create
    @discussion = Discussion.new params.require(:discussion).permit(:title, :body)
    @project = Project.find(params[:project_id]) # taken from the url?
    @discussion.project = @project
        if @discussion.save
            redirect_to project_path(@project)
        else
            render 'projects/show'     
        end
    end

end
