require 'sinatra'
require 'multi_json'
require "sinatra/json"
require "sinatra/jsonp"

configure do
  mime_type :jsonp, 'text/javascript'
  mime_type :json, 'application/json'
end

get '/' do
  @answer = get_answer
  headers "X-Answer" => @answer
  erb :index
end


get '/shake.json' do
  content_type :json
  json answer: get_answer
end

get '/shake.js' do
  content_type :jsonp
  data = {answer: get_answer}
  jsonp data, params[:callback]
end

not_found do
  @answer = "404 - File Not Found"
  erb :index
end


def get_answer
  answers = [
    "As I see it, yes",
    "It is certain",
    "It is decidedly so",
    "Most likely",
    "Outlook good",
    "Signs point to yes",
    "Without a doubt",
    "Yes",
    "Yes - definitely",
    "You may rely on it",
    "Reply hazy, try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
    ]
    
  answers[rand(answers.size)]
end