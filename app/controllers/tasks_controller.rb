class TasksController < ApplicationController
  def show
    @task = Task.new.find(params[:id])
    render json: @task.content
  end

  def create
    @task = Task.new.create(task_params)
    render json: @task
  end

  def update
    @task = Task.new.update(params[:id], task_params)
    render json: @task
  end

  def destroy
    Task.new.delete(params[:id])
    render json: { status: 'success' }
  end

  private
  def task_params
    params.require(:task).permit(:name, :completed)
  end
end
