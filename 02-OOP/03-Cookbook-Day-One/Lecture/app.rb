require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'router'

task_repository = TaskRepository.new
controller      = TasksController.new(task_repository)
router          = Router.new(controller)
router.run
