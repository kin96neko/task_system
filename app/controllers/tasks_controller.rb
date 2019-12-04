class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def create
    @task = @user.tasks.build(task_params)
    if @task.save
      flash[:success] = "タスクを新規作成しました。"
      redirect_to user_tasks_url @user
    else
      render :new
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end

end
