# Want to input scores into 'frames' within the page and
# Summing those scores

# 1) What I would like is to be able to input a score which fills into a
# table entry.

require "sinatra"
require "sinatra/reloader"

get('/home') {
  "I am home."
  
  "Enter your first score:"
}

get('/home/:score') {
  score = params[:score].to_i
  erb :score, locals: { score: score }
}