require 'sinatra'

# HTTP VERB GET - when you visit a webpage the get is whats happening
# when linking erb files to sinatra, sinatra specifically looks for a folder called views. that is where you will save erb files.
get '/' do  
  erb :index
end

# symbol :name in the route. placeholder variable for something
get '/first/:name' do
  # params hash already exists somewhere. params is hash :name is value
  @name = params[:name]
  erb :first
end

get '/second/:page_id' do
  @page_id = params[:page_id].to_i
  erb :second
end


# get '/' do  #
#   erb :index  # erb is embedded ruby. can take the erb file and treat as html
# end
#
# get '/first' do    # /first is the route. it will load the first get and then
#   '<p>another page on my site</p>'  # take you to the /first page
# end
#
# # anytime you make changes you need to reload sinatra
# get '/second' do
#   '<h3>My third page of the site</h3>'
# end


# http://www.mysite.com/ - the / slash refers to the homepage. after that is the route
# localhost:4567
# local host is my machine
# :4567 - is the port

# sinatra has a mini web server that runs. when we run ruby. site.rb sinatra boots this webserver and ports it to :4567
# to kill the server cntrl C

# development log - information about the website. anytime you access the website it will log it.
