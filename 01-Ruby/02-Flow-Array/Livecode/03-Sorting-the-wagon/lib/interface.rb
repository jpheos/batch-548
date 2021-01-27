require 'amazing_print'
require_relative "wagon_sort"

students = []
student_name = nil

while student_name != ""
  if students.empty?
    puts "Type a student name:"
  else
    puts "Type another student name or press enter to finish:"
  end
  student_name = gets.chomp
  students << student_name if student_name != ""
end

# # TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
# #       file and display the sorted student list

students_sorted = wagon_sort(students)

puts "Congratulations! Your Wagon has #{students_sorted.size} student#{students.size == 1 ? '' : 's'}:"

if students_sorted.size == 1
  puts students_sorted.first
else
  puts "#{students_sorted[0..-2].join(', ')} and #{students_sorted.last}"
end
