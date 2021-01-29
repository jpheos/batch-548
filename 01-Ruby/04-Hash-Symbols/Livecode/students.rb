require 'amazing_print'

students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]

students_hash =
  students.map do |student_array|
    {
      name: student_array.first,
      age: student_array.last
    }
  end

ap students_hash

# [{ :name => "John", age: 28 }, {...}, {}]
