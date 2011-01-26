require "sinatra"
require "redis"

redis = Redis.new

get "/:command" do |command|
  redis.send "#{command}"
end

get "/:command/:key" do |command, key|
  redis.send "#{command}", "#{key}"
end

get "/:command/:key/:value" do |command, key, value|
  redis.send "#{command}", "#{key}", "#{value}"
end