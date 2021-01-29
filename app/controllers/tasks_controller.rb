class TasksController < ApplicationController
    
    def index
        @task = Task.all
    end
    
    def create
        @task = Task.new(year:[2021],month:[1],day:[30],rank:[A],title: params[:title],detail:[ddd],category:[aaa])
        @result = @task.save
    end
    
    def destroy
        @task = Task.find(table)
        @task.destroy
        redirect_to tasks_path
    end
    
    private
    
    def set_params
        params.require(:task).permit(:year,:month,:day,:rank,:title,:detail,:category)    
    end
end