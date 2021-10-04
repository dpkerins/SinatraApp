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

get '/random-cat' do
  @cat_name = ["Amigo", "Misty", "Almond"].sample 
  erb(:index)
end

post '/named-cat' do 
  p params
  @cat_name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end