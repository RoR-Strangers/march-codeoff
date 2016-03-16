class TasksController < ApplicationController
  
  def index
   @tasks = Task.all
  end
  
  def new
  @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    #needs to be changed to get user that is logged in
    @task.user = User.first
    if @task.save
      flash[:success] = "Task was successfully created"
      redirect_to tasks_path
    else
      render 'new'
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:danger] = "Task was successfully deleted"
    redirect_to tasks_path
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "Task was successfully updated"
    end
    redirect_to tasks_path
  end
  
  private
  def task_params
    params.require(:task).permit(:name, :completion)
  end
  
end

  