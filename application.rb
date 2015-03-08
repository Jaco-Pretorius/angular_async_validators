require "sinatra"
require 'sinatra/cross_origin'
require "json"

configure do
  enable :cross_origin
end

get "/usernames" do
  query = params["q"]
  capitalizedQuery = query && query.capitalize
  matches = ["Bob", "Steve", "James", "Dave"].select do |username|
    username == capitalizedQuery
  end

  matches.to_json
end
