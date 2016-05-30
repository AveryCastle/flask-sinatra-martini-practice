require 'sinatra'
require 'json'
require 'mongo'

set :bind, '0.0.0.0'

db_ip = [ENV['DB_1_PORT_27017_TCP_ADDR']]
client = Mongo::Client.new(['192.168.99.100:27017'], database: 'blog')

get '/' do
  @posts = client[:posts].find.to_a
  erb :blog
end

get '/json' do
  content_type :json
  client[:posts].find.to_a.to_json
end

post '/new' do
  client[:posts].insert_one(params)
  redirect to('/')
end
