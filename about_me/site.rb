require 'sinatra'

get '/' do
  erb :index
end

get '/two' do
  @two = 'Two'
  erb :two
end

get '/three' do
  @three = 'Three'
  erb :three
end
