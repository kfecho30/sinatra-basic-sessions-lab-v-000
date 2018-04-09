require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "waikiki"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    binding.pry
    @session = session[params.key.first] = params[:item]
    binding.pry
  end
end
