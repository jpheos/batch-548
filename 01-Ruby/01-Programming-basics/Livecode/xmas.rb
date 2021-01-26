require 'date'

# date du prohcain noel - date aujourd hui => nb jours

def next_xmas
  today = Date.today # ou date_today
  year = today.year
  current_xmas = Date.new(year, 12, 25)

  if today <= current_xmas
    current_xmas
  else
    current_xmas.next_year
  end
end

def xmas_days
  today = Date.today # ou date_today
  (next_xmas - today).to_i
end


p xmas_days



