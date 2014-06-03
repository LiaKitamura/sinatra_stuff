require 'sinatra'

get '/' do
  erb :index
end

get '/two' do
  @two = 'Two'
  erb :two
end

get '/form' do
  @form = 'Form'
  erb :form
end

post '/form' do
  "You said '#{params[:special]}'"
end
