require "sinatra"
require "sinatra/reloader"

frames = (1..10).entries
game = Array.new

get('/') {
  erb :home, locals: { game: game }
}

post('/score') {
  score = params[:score].to_i
  game << score
  total_score = 0
  game.each { |x| total_score += x}
  erb :score, locals: { score:       score,
                        frames:      frames,
                        game:        game,
                        total_score: total_score }
}