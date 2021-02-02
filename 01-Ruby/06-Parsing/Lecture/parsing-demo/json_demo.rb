require 'amazing_print'
require 'json'

# # TODO - let's read/write data from beers.json
# filepath    = 'data/beers.json'


# serialized_beers = File.read(filepath)

# ap serialized_beers

# data = JSON.parse(serialized_beers)

# ap data

filepath    = 'data/beers2.json'


beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}

ap beers


File.open(filepath, 'wb') do |file|
  file.write(JSON.pretty_generate(beers))
end
