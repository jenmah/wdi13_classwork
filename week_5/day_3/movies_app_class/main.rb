require 'sinatra'
require 'sinatra/contrib/all'
require 'pg'
require 'pry'
require 'httparty'
require 'json'

before do 
  @db = PG.connect(dbname: 'movies_app', host: 'localhost')
end

after do
  @db.close
end

get '/' do
  title = params[:title]
  if title
    url_title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{url_title}"
    @result = HTTParty.get(url)
    sql = "INSERT INTO movies (title, year, rated, released, runtime, genre, director, writers, actors, plot, poster) VALUES (#{sql_string(@result['Title'])}, '#{@result['Year']}',  '#{@result['Rated']}', '#{@result['Released']}', '#{@result['Runtime']}', '#{@result['Genre']}', '#{@result['Director']}', '#{@result['Writer']}', #{sql_string(@result['Actors'])}, #{sql_string(@result['Plot'])}, '#{@result['Poster']}')"
    # Execute the sql command on the database
    @db.exec(sql)
    end
  erb :movie
end


def sql_string(value)
    "'#{value.gsub("'", "''")}'"
  end
  #connect to the API and fetch all of the date for the requested movies
  #save the movies data to our movies table in the movies_app database


  #make a query to the database to get all the movies 
  #store them in an instance variable
  #loop through the arary of movies in the movies.erb
  #create a nav with links to different pages
  #styling
get '/movies' do
  @movies = @db.exec("select * from movies;")
  erb :movies
end

# get '/movies' do
#   sql = "select * from movies"
#   #this will return an array of movies
#   @movies = @db.exec(sql)
#   erb :movies
# end


