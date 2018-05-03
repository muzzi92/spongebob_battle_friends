require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  $player_1 = Player.new(params[:player_1])
  $player_2 = Player.new(params[:player_2])
  redirect '/play'
end

get '/play' do
  @p1_name = $player_1.name
  @p2_name = $player_2.name
  erb(:play)
end

get '/attack' do
  @p1_name = $player_1.name
  @p2_name = $player_2.name
  erb(:attack)
end

run! if app_file == $0

end
