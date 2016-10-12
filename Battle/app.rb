require 'sinatra/base'

class Battle < Sinatra::Base

  enable :session

  get '/' do
    erb :index
  end

  post '/battle' do
    @player_1 = params[:player_1_name]
    @player_2 = params[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end