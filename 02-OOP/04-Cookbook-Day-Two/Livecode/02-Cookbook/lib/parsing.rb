require_relative 'recipe'
require 'amazing_print'
require 'nokogiri'
require 'open-uri'

def scraper(ingredient)
  uri = URI.open("https://www.marmiton.org/recettes/recherche.aspx?type=all&aqt=#{ingredient}")
  doc = Nokogiri::HTML(uri)
  doc.search(".recipe-card").first(5).map do |card|
    name = card.search('.recipe-card__title').text.strip
    description = card.search('.recipe-card__description').text.strip[0..40]
    Recipe.new(name, description)
  end
end


ap scraper("chocolat")


# [
#   <Recipe 5678987654 @name="qzefqg" @description="hgvjbkl">,
#   <Recipe 5678987654 @name="qzefqg" @description="hgvjbkl">,
#   <Recipe 5678987654 @name="qzefqg" @description="hgvjbkl">,
#   <Recipe 5678987654 @name="qzefqg" @description="hgvjbkl">,
#   <Recipe 5678987654 @name="qzefqg" @description="hgvjbkl">
# ]
