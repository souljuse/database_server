ENV['RACK_ENV'] = 'development'

require_relative 'data_mapper_setup'
require 'sinatra/base'

class App < Sinatra::Base
  set :port, 4000

  SAVED_KEYS = {}

  get '/' do
    erb :index
  end

  get "/get" do
    @key = params[:key]
    @value = SAVED_KEYS[params[:key]]
    erb :show
  end

  get '/set' do
    SAVED_KEYS.merge!(params)
    redirect "/"
  end

end
