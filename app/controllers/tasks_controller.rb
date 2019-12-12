class TasksController < ApplicationController
  
  def show
  end
  
  def index
    @tasks = Task.all
  end
  
end
