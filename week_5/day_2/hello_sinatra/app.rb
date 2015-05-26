require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do 
  @page = 'home'
  @languages = ['Ruby', 'Javascript', 'HTML', 'CSS', 'SQL']
  erb :home
end

get '/about' do
  @page = 'about'
  erb :about
end

# the :name part of this URL is dynamic (we can change the name)
get '/friends/:first/:last/:age' do 
  # binding.pry
  "Your friend is called: #{params[:first]} #{params[:last]} and they are #{params[:age]} years old."
end