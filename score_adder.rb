# Want to input scores into 'frames' within the page and
# Summing those scores

# 1) What I would like is to be able to input a score which fills into a
# table entry.

require "sinatra"
require "sinatra/reloader"

game = Array.new

get('/') {
  erb :home, locals: { game: game }
}

post('/score') {
  score = params[:score].to_i
  erb :score, locals: { score: score,
                        game: game }
}