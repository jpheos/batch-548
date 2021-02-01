
def calculate(first_number, operator, second_number)
  case operator
  when '+' then first_number + second_number
  when '-' then first_number - second_number
  when '*' then first_number * second_number
  when '/' then first_number.fdiv(second_number)
  end
end
