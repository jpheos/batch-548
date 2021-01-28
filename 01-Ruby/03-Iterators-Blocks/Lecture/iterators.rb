require 'amazing_print'

musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']


# for i in (0...musicians.size)
#   ap i
#   musician = musicians[i]
#   ap musician
# end



# for musician in musicians
#   ap musician
# end


# musicians.each do |musician|
#   ap musician
# end




# upcase_musicians = musicians.map do |musician|
#   musician.split.last.upcase
# end

# ap upcase_musicians
# ap musicians



notes = [12, 14, 17, 17, 18, 13, 10, 9]

# count = 0


# notes.each do |note|
#   if note > 15
#     count += 1
#   end
# end

# ap count

# count = 0

# notes.each do |note|
#   if note <= 10
#     count += 1
#   end
# end

# ap count

# total = notes.count do |note|
#   note > 15
# end

# ap total


# total = notes.count do |note|
#   note <= 10
# end

# ap total



total_r = musicians.count do |musician|
  musician.start_with? 'R'
end

ap total_r



musicians_r = musicians.select { |musician| musician.start_with? 'R' }

ap musicians_r
