require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'

get '/' do
  erb :home
end

get '/about' do
  @page = 'about'
  @names = ['Jen', 'Sead', 'Kobe']
  erb :about
end

get '/friends/:first/:last/:age' do
  @first = params[:first]
  @last = params[:last]
  @age = params[:age]
  erb :friends
end