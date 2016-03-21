class SubtasksController < ApplicationController

  def create
    @subtask = Subtask.new(subtask_params)
    @subtask.completion = :false
    if @subtask.save
      flash[:success] = "subtask was successfully created"
      redirect_to tasks_path
    else
      render 'error'
    end
  end
  
  def destroy
    @subtask = Subtask.find(params[:id])
    @subtask.destroy
    flash[:danger] = "subtask was successfully deleted"
    redirect_to tasks_path
  end
  
  def update
    @subtask = Subtask.find(params[:id])
    if @subtask.update(subtask_params)
      flash[:success] = "subtask was successfully updated"
    end
    redirect_to tasks_path
  end
  
  private
  def subtask_params
    params.require(:subtask).permit(:name, :completion, :task_id, :duedate)
  end

end
  