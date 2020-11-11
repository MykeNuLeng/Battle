require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    'Hello Battle!'
    'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/hp' 

  end

  get '/hp' do 
    redirect '/play'
  end

  get '/play' do
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
