require 'sinatra/base'
require './lib/player'

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
  @p1_health = $player_1.damage
  @p2_health = $player_2.damage
  erb(:attack)
end

run! if app_file == $0

end
