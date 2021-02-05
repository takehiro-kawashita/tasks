class TasksController < ApplicationController
    
    def index
        @task = Task.all
    end
    
    def new
        
    end
    
    def create
        @task = Task.new(limited_at: params[:limited_at] ,rank: params[:rank],title: params[:title],detail: params[:detail],category: params[:category])
        @result = @task.save
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end
end