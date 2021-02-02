require 'amazing_print'
require 'open-uri'
require 'nokogiri'

ingredient = 'chocolate'
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = open(url).read

html_doc = Nokogiri::HTML(html_file)


html_doc.search('.standard-card-new__article-title').each do |element|

  url = "https://www.bbcgoodfood.com" + element.attribute('href').value
  ap element.text
  ap url

  puts ""
end
