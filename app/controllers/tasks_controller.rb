class TasksController < ApplicationController

  before_action :get_category
  before_action :get_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)
      if @task.save
        redirect_to category_task_path(@category, @task), notice: 'Task created'
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to category_task_path(@category, @task), notice: 'Task update successful'
    else 
      redirect_to :edit
    end
  end

  def destroy
    @task.destroy!
    redirect_to category_tasks_path(@category), notice: 'Task deleted'
  end


end

private
  def task_params
    params.require(:task).permit(:task, :description)
  end

  def get_category
    @category = Category.find(params[:category_id])
  end

  def get_task
    @task = @category.tasks.find(params[:id])
  end
