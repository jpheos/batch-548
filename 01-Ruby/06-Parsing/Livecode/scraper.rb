require 'amazing_print'
require 'open-uri'
require 'nokogiri'
require 'yaml'

URL_TOP = "https://www.imdb.com/chart/top/"

# return 5 urls (Array)
def top_urls
  html_content = URI.open(URL_TOP).read
  html_doc = Nokogiri::HTML(html_content)
  html_doc.search('.titleColumn a').first(5).map do |element|
    "https://www.imdb.com" + element["href"]
  end
end

def scrape_movie_cast(html_doc)
  stars_element = html_doc.search('.credit_summary_item').last
  stars_element.search('a').first(3).map do |star_element|
    star_element.text
  end
end

def scrape_movie_director(html_doc)
  html_doc.search('.credit_summary_item a').first.text
end

def scrape_movie_title(html_doc)
  html_doc.search('h1').first.text.strip[0..-8]
end


def scrape_movie_year(html_doc)
  html_doc.search('h1').first.text.strip[-5..-2].to_i
end

def scrape_movie(url)
  html_content = URI.open(url).read
  html_doc = Nokogiri::HTML(html_content)

  {
    cast: scrape_movie_cast(html_doc),
    director: scrape_movie_director(html_doc),
    storyline: "Chronicles ",
    title: scrape_movie_title(html_doc),
    year: scrape_movie_year(html_doc)
  }
end



data = top_urls.map {|url| scrape_movie(url) }

# ap data

File.write('movie.yml', data.to_yaml)
