require 'amazing_print'
require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

# DB.execute("DELETE FROM tasks")


# task = Task.new(title: 'toto', description: 'tata')
# task.save
# task = Task.new(title: 'tete', description: 'tutu')
# task.save
# task = Task.new(title: 'tyty', description: 'tata')
# task.save

ap Task.all

ap "---------------"

task = Task.find(19)
task.destroy

ap "---------------"

ap Task.all
