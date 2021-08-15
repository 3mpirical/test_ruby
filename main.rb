require "sinatra"

class Main < Sinatra::Base
  before do
    content_type :json
    if params["token"] != "nick-test-token"
      halt 422, { error: "Something went wrong" }.to_json
    end
  end

  get "/" do
    { data: "hello json world" }.to_json
  end
end
