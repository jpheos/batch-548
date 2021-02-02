require 'nokogiri'
require 'amazing_print'
require 'open-uri'

def scraper(article)
  # html_content = open("results.html").read
  html_content = URI.open("https://www.etsy.com/search?q=#{article}").read
  doc = Nokogiri::HTML(html_content)
  array = []
  doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
    array << element.text.strip
  end
  array.first(10)
end


# ap scraper('jean')
