def array_to_hash(array)
  hash = {}

  array.each_with_index do |value, index|
    if block_given?
      hash[yield(index)] = value
    else
      hash[index.to_s] = value
    end
  end

  return hash
end


result1 = array_to_hash(%w[toto tutu titi]) # = { "0" => 'toto', "1" => ...}
result2 = array_to_hash(%w[toto tutu titi]) do |index|
  "koko#{index}"
end  # = { "item0" => 'toto', "item1" => 'tutu', }

puts result1
puts result2
