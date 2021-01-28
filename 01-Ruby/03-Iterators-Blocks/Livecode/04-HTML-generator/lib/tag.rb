require 'amazing_print'

def tag(tag_name, attributes = nil)
  attr = attributes ? " #{attributes.first}=\"#{attributes.last}\"" : ""
  "<#{tag_name}#{attr}>#{yield}</#{tag_name}>"
end
