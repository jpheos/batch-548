require 'amazing_print'
require 'csv'
require_relative 'scraper'

GIFTS       = []
FILEPATH    = 'data/gifts.csv'








def load_csv
  csv_options = { headers: :first_row }

  CSV.foreach(FILEPATH, csv_options) do |row|
    data = {
      name: row["name"],
      marked: row["marked"] == "true"
    }
    GIFTS << data
  end
end

def save_csv
  CSV.open(FILEPATH, 'wb') do |csv|
    csv << ["name", "marked"]

    GIFTS.each do |gift|
      csv << [gift[:name], gift[:marked]]
    end
  end
end

def list
  GIFTS.each_with_index do |gift, index|
    marked = gift[:marked] ? "X" : " "
    puts "#{index + 1} - [#{marked}] #{gift[:name]}"
  end
end

def add
  puts "What do you want to add?"
  print '> '
  name = gets.chomp
  gift = {
    name: name,
    marked: false
  }
  GIFTS << gift
  save_csv
end

def delete
  list
  puts "What do you want to remove? (enter number)"
  print '> '
  index = gets.chomp.to_i - 1
  GIFTS.delete_at(index)
  save_csv
end

def mark
  list
  puts "What do you want to mark? (enter number)"
  print '> '
  index = gets.chomp.to_i - 1
  GIFTS[index][:marked] = true
  save_csv
end

def idea
  puts "What are you looking for on Etsy?"
  print '> '
  article = gets.chomp
  articles = scraper(article)

  puts "Here are Etsy results for \"#{article}\":"
  articles.each_with_index do |article, index|
    puts "#{index + 1} - #{article}"
  end

  puts "What you want to add? (Enter a number)"
  index = gets.chomp.to_i - 1


  name = articles[index]
  gift = {
    name: name,
    marked: false
  }
  GIFTS << gift
  save_csv
end

def run
  load_csv
  puts "> Welcome to your Christmas gift list"
  continue = true

  while continue
    puts "> Which action [list|add|delete|mark|idea|quit]?"
    choice = gets.chomp
    case choice
    when "list"   then list
    when "add"    then add
    when "delete" then delete
    when "mark"   then mark
    when "idea"   then idea
    when "quit"   then continue = false
    end
  end

  puts "> Goodbye 👋"
end

run




