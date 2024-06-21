class TasksController < ApplicationController
  before_action :authenticate_user!  # Devise method to authenticate user before any action

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_url
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url
  end

  private
    def task_params
      params.require(:task).permit(:title, :details)
    end
end
