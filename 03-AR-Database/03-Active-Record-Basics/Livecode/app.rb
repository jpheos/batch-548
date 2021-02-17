require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry'

get "/" do
  # get data from model
  @restaurants = Restaurant.all
  # @restaurants = Restaurant.where("ratings > 3")

  # render view
  erb :index
end

get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)

  erb :show
end

post '/restaurants' do
  restaurant = Restaurant.new(params)
  restaurant.rating = 0
  restaurant.save

  redirect '/'
end


# verb url
