require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

post '/about' do
  @name = params['name']
  @age = params['age']
  @bio = params['bio']
  @language = params['lang']
  erb :about
end
