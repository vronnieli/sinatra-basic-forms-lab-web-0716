require_relative 'config/environment'
require_relative 'models/puppy'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @puppy = Puppy.new(params["name"], params["breed"], params["age"])
    erb :display_puppy
  end

end
