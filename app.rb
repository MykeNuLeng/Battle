require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    'Hello Battle!'
    'Testing infrastructure working!'
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect '/hp'

  end

  get '/hp' do
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.pimp_slap(@game.player_2)
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
