require "sinatra"
require "json"

get "/usernames" do
  query = params["q"]
  matches = ["Bob", "Steve", "James", "Dave"].select do |username|
    /#{username}/i =~ query
  end

  matches.to_json
end
