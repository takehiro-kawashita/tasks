class TasksController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
        @task = Task.where(user_id: session[:user_id])
    end

    def create
        @task = Task.new(limited_at: params[:limited_at] ,rank: params[:rank],title: params[:title],detail: params[:detail],category: params[:category])
        @task = Task.new(task_params)
        @task.user_id = current_user.id
        @result = @task.save
    end
    
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to tasks_path
    end
end