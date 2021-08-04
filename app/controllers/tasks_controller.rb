class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render "tasks/index"
  end

  def new
    render "tasks/new"
  end

  def create
    title = params[:title]
    @task = Task.create(title: title)
    redirect_to("/", status: :created)
  end

  def edit
    @task = Task.find(params[:id])
    render "tasks/edit"
  end

  def update
    title = params[:title]
    task = Task.find(params[:id])
    task.update(title: title)
    redirect_to("/", status: :ok)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to("/", status: 204)
  end
end
