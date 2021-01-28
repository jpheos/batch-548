require 'amazing_print'

def acronymize(sentence)
  sentence.upcase.split.map { |word| word[0] }.join
end

