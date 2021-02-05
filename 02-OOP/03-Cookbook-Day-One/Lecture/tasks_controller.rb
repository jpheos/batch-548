require_relative 'tasks_view'
require_relative 'task'

class TasksController
  def initialize(task_repository)
    @repository = task_repository
    @view = TasksView.new
  end

  def list
    tasks = @repository.all
    @view.display_all(tasks)
  end

  def create
    description = @view.ask_description
    task = Task.new(description)
    @repository.add(task)
  end

  def mark_as_done
    tasks = @repository.all
    @view.display_all(tasks)
    index = @view.ask_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def destroy
    tasks = @repository.all
    @view.display_all(tasks)
    index = @view.ask_index
    @repository.remove(index)
  end
end
