require 'sinatra'

get '/' do
  @page_title = 'Home'
  erb :index
end

get '/about' do
  @page_title = 'About'
  erb :about
end

get '/resume' do
  @page_title = 'Resume'
  erb :resume
end
