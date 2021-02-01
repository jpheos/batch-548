require 'amazing_print'
# TODO: you can build your instacart program here!

STORE = {
 "kiwi" => {
    price: 1.25,
    quantity: 10
  },
 "banana" => {
    price: 0.5,
    quantity: 10
  },
 "mango" => {
    price: 4,
    quantity: 10
  },
 "asparagus" => {
    price: 9,
    quantity: 10
  }
}

CART = Hash.new(0)

def welcome
  puts "> --------------------"
  puts "> Welcome to Instacart"
  puts "> --------------------"
  puts "> In our store today:"

  STORE.each do |name, data|
    puts "> #{name}: #{data[:price]}€"
  end
  puts "> --------------------"
end

def bill
  total = 0

  puts "> -------BILL---------"
  CART.each do |name, quantity|
    price = STORE[name][:price]
    sub_total = quantity * price
    puts "> #{name}: #{quantity} X #{price}€ = #{sub_total}€"
    total += sub_total
  end

  puts "> TOTAL: #{total}€"
  puts "> --------------------"
end


def add_item(item)
  if STORE.key?(item)
    puts "How many?"
    print "> "
    quantity = gets.chomp.to_i

    if STORE[item][:quantity] >= quantity
      CART[item] += quantity
      STORE[item][:quantity] -= quantity
    else
      available = STORE[item][:quantity]
      puts "> Sorry, there are only #{available} #{item}s left.."
    end
  else
    puts "> Sorry, we don't have #{item} today.."
  end
end



welcome
continue = true

while continue
  puts "> Which item? (or 'quit' to checkout)"
  print "> "
  response = gets.chomp

  if response == 'quit'
    continue = false
  else
    add_item(response)
  end
end

bill


# ap STORE
