
class Site < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/two' do
    @two = 'Two'
    erb :two
  end

  get '/dogs' do
    @dogs = 'Dogs'
    erb :dogs
  end

  get '/form' do
    @form = 'Form'
    erb :form
  end

  post '/form' do
    "Submission: '#{params[:special]}'"
  end
end
