require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

 enable :sessions
 set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:name_1], params[:name_2])
    # la global variable $ se puede asignar directamente sin
    #pasar por instance variable @
    # $player_1 = @player_1
    # $player_2 = @player_2
    redirect '/play'
  end

  get '/play' do
    # @player_1 = session[:session_1]
    # @player_2 = session[:session_2]
    # como ya tenemos la globar variable $, podemos hacer 
    # referencia a ella directamente en los archivos html (erb)
    # sin tener que pasar por @.... = $....
    erb :play
  end

  post '/attack-conf' do 
    $game.attack($game.player_2)
    erb :attack_confirm
  end

  run! if app_file == $0

end
