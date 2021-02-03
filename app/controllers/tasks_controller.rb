class TasksController < ApplicationController
    
    def index
        @task = Task.all
    end
    
    def create
        @task = Task.new(year: params[:year],month: params[:month],day: params[:day],rank: params[:rank],title: params[:title],detail: params[:detail],category: params[:category])
        @result = @task.save
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end
end