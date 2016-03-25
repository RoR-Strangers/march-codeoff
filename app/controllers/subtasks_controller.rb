class SubtasksController < ApplicationController

  def create
    @subtask = Subtask.new(subtask_params)
    @subtask.completion = :false
    @subtask.duedate = @subtask.task.duedate
    if @subtask.save
      flash[:success] = "subtask was successfully created"
      redirect_to user_path(@subtask.task.user)
    else
      render 'error'
    end
  end
  
  def destroy
    @subtask = Subtask.find(params[:id])
    @subtask.destroy
    flash[:danger] = "subtask was successfully deleted"
    redirect_to user_path(@subtask.task.user)
  end
  
  def update
    @subtask = Subtask.find(params[:id])
    if @subtask.update(subtask_params)
      flash[:success] = "subtask was successfully updated"
    end
    redirect_to user_path(@subtask.task.user)
  end
  
  private
  def subtask_params
    params.require(:subtask).permit(:name, :completion, :task_id, :duedate)
  end

end
  