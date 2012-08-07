# Want to input scores into 'frames' within the page and
# Summing those scores

# 1) What I would like is to be able to input a score which fills into a
# table entry.

require "sinatra"
require "sinatra/reloader"
require_relative "lib/frame"

game = Array.new(10) { ScoreAdder::Frame.new }

get('/') {
  erb :home, locals: { game: game }
}

post('/score') {
  score = params[:score].to_i
  game << score
  total_score = 0
  game.each { |x| total_score += x}
  erb :score, locals: { score:       score,
                        game:        game,
                        total_score: total_score }
}