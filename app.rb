require 'sinatra/base'

class Battle < Sinatra::Base

get '/' do
<<<<<<< HEAD
  erb(:index)
=======
  erb :index
end

post '/names' do
  @player_1_name = params[:player_1_name]
  @player_2_name = params[:player_2_name]
  erb :play
>>>>>>> 5a75334632d8c24ccd29aea304c5dc22de7d3743
end

post '/names' do
  @player_1 = params[:Player_1]
  @player_2 = params[:Player_2]
  erb(:play)
end


run! if app_file == $0

end
