require "./linuxlunch/*"

require "kemal"

before_all do |env|
  env.response.content_type = "application/json"
end

get "/" do |env|
  { "message" => "/api/v1/message" }.to_json
end

get "/api/v1/message" do |env|
  { "hello" => "world" }.to_json
end

post "/api/v1/update" do |env|
begin
  name = env.params.json["name"]
  message = env.params.json["message"]
  { "response" => "#{name} says: #{message}" }.to_json
rescue e: KeyError
  { "response" => "missing parameter: #{e}" }.to_json
end
end

Kemal.run

