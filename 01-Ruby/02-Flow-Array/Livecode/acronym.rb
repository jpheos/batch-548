require 'amazing_print'


def example(x)
  puts x
end



def acronym(sentence)
  words = sentence.upcase.split
  letters = ""
  words.each do |word|
    letters << word[0]
  end
  letters
end


# convertir en array
# prendre le premier caractère de cahque element
# les passer en majuscule


ap acronym('') # => ''
ap "-----------------------------------"
ap acronym('what the fuck') # => WTF
ap "-----------------------------------"
ap acronym('away from keyboard') # => AFK
