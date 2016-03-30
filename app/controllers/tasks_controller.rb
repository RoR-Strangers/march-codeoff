class TasksController < ApplicationController
  
  def create
    @task = Task.new(task_params)
    @task.user = current_user
    @task.completion = :false
    if @task.save
      flash[:success] = "Task was successfully created"
      redirect_to user_path(@task.user)
    else
      render 'error'
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:danger] = "Task was successfully deleted"
    redirect_to user_path(@task.user)
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      flash[:success] = "Task was successfully updated"
    end
    redirect_to user_path(@task.user)
  end
  
  private
  def task_params
    params.require(:task).permit(:name, :completion, :duedate)
  end
  
end

  