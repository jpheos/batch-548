students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# students.each_with_index do |student, index|
#   age = student_ages[index]
#   puts "- #{student} (#{age} years old)"
# end


paris = {
  "country" => "France",
  "population" => 2211000
}

paris.each do |key, value|
  puts "Paris #{key} is #{value}"
end
