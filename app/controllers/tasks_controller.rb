class TasksController < ApplicationController
  def index
    tasks = Task.new.all
    tasks = tasks.map { |task| OpenStruct.new(task) }
    puts tasks.inspect
    render json: tasks
  end

  def show
    @task = Task.new.find(params[:id])
    render json: @task.content
  end

  def create
    @task = Task.new.create(task_params.to_h)
    render json: @task.content
  end

  def update
    @task = Task.new.update(params[:id], task_params.to_h)
    render json: @task.content
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
