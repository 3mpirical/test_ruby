#require "pry"
#puts "whats your name?"

#input = gets.chomp
#binding.pry
#puts "nice to meet you #{input}"

require "sinatra"

before "/" do
  content_type :json
  if params["token"] != "nick-test-token"
    halt 422, { error: "Something went wrong" }.to_json
  end
end

get "/" do
  { data: "hello json world" }.to_json
end
