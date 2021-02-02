# require 'csv'
# require 'amazing_print'

# # TODO - let's read/write data from beers.csv
# filepath    = 'data/beers.csv'

# options = {headers: :first_row}

# CSV.foreach(filepath, options) do |row|
#   # Here, row is an array of columns

#   ap row
#   # ap  "#{row[0]} | #{row[1]} ==== #{row[2]}"
# end


require 'csv'

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/beers2.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'tototototo']
  csv << ['Guinness', 'Stout', 'Ireland']
  # ...
end
