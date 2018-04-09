require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "waikiki"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session[params.key.first] = params[:item]
  end
end
