require 'sinatra/base'


class Battle < Sinatra::Base

 enable :sessions
 set :public_folder, File.dirname(__FILE__) + '/static'

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:name_1]
    @player_2 = params[:name_2]
    session[:session_1]= @player_1
    session[:session_2]= @player_2
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:session_1]
    @player_2 = session[:session_2]
    erb :play
  end

  run! if app_file == $0

end
