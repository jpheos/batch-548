# frozen_string_literal: true

require_relative 'Recipe'
require 'nokogiri'
require 'open-uri'

class ScrapeAllrecipesService
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def call
    uri = URI.open("https://www.marmiton.org/recettes/recherche.aspx?type=all&aqt=#{@ingredient}")
    doc = Nokogiri::HTML(uri)
    doc.search(".recipe-card").first(5).map do |card|
      name = card.search('.recipe-card__title').text.strip
      description = card.search('.recipe-card__description').text.strip[0..40]
      rating = card.search('.recipe-card__rating__value').text.strip.to_i
      Recipe.new(name, description, rating)
    end
  end
end
