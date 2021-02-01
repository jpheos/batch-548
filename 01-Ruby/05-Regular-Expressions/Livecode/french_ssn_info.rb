require "yaml"
require 'amazing_print'

SSN_REGEX = /^(?<gender>[12])(?<year>\d{2})(?<month>0[1-9]|1[0-2])(?<department>0[1-9]|2[AB1-9]|9[0-5]|[13-8]\d)\d{6}(?<key>\d{2})/


MONTHS = %w[January February March April May June July August September October November December]

DEPARTMENTS = YAML.load_file('departments.yml')


def valid_key?(ssn_number)
  number = ssn_number[0..-3].to_i
  key = ssn_number[-2..-1].to_i

  (97 - number) % 97 == key
end

def gender(math_data)
  math_data[:gender] == '1' ? 'man' : 'woman'
end

def year(math_data)
  "19#{math_data[:year]}"
end

def month(math_data)
  MONTHS[math_data[:month].to_i - 1]
end


def department(math_data)
  DEPARTMENTS[math_data[:department]]
end

def french_ssn_info(ssn_number)
  ssn_number.gsub!(/ /, '')
  return 'The number is invalid' unless ssn_number.match? SSN_REGEX
  return 'The number is invalid' unless valid_key? ssn_number

  math_data = ssn_number.match SSN_REGEX

  gender_str = gender(math_data)
  year_str = year(math_data)
  month_str = month(math_data)
  department_str = department(math_data)

  "a #{gender_str}, born in #{month_str}, #{year_str} in #{department_str}."
end



ap french_ssn_info("1 84 12 76 451 089 46")
# ap french_ssn_info("184127645108946")
# ap french_ssn_info("184127645108947")
# ap french_ssn_info("")
# ap french_ssn_info("ahzc qzuydftfvzeU ez")
