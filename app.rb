require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "This is my secret! Shhh."
end

get '/doug' do
  "This is doug's route"
end

get '/kirstie' do
  "This is Kirstie's route"
end


