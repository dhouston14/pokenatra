require "bundler/setup"
# require 'ffaker'
require "pg"
require "active_record"
# require "pry"
require "sinatra"
require "sinatra/reloader"

require_relative "db/connection"
require_relative "models/pokemon"
# require_relative "models/artist"
# require_relative "models/song"

get '/pokemon' do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end

get '/pokemon/new' do
  erb :"pokemon/new"
end

post '/pokemon/new' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

# get 'pokemon/edit' do
#
# end

post '/pokemon/:id' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect ("/pokemon")
end







# binding.pry

puts "END OF FILE"
