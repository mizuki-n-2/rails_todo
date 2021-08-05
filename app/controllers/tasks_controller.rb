class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    title = params[:title]
    @task = Task.create(title: title)

    redirect_to action: 'index'
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy

    redirect_to action: 'index'
  end
end
