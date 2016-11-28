require 'sinatra/base'

class MyApp < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    'this proves the homepage is on the custom port'
  end

  get '/set' do
    key = params.flatten[-2]
    value = params.flatten[-1]
    session[key] = value
    "key value page is #{key}: #{value}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
