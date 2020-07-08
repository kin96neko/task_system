class TasksController < ApplicationController
  
  def show
  end

  def index
    @tasks = Task.all
  end
  
  def new
  end

end
