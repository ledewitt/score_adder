require "sinatra"
require "sinatra/reloader" if development?

require_relative "lib/jeg2s_game"
game = Game.new

get('/') {
  erb :home
}

post('/score') {
  game.add_shot(params[:pins].to_s.split(/,\s*/))
  erb :score, locals: {game: game}
}
