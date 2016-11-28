require 'sinatra/base'

class MyApp < Sinatra::Base
  set :port, 4000

  get '/' do
    'this proves the homepage is on the custom port'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
