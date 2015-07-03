require 'sinatra'
require 'sinatra/contrib/all'
require 'pg'
require 'pry'

get '/' do
  erb :index
end

get '/items' do
  sql = "select * from items"
  @items = run_sql(sql)
  # checking if it is an ajax request?
    if request.xhr?
      # convert the pg object into an array, convert the array to json to send back as response
      json @items.to_a
    else
      erb :index
    end
end

post '/items' do
  item = params[:item]
  sql = "insert into items (item, done) values ('#{item}', 'false') returning *"
  @item = run_sql(sql).first
  if request.xhr?
    json @item
  else
    redirect_to '/items'
  end
end

put '/items/:id' do
  # look up the item in the database using its id and then update the done column
  sql = "update items set done='#{params[:done]}' where id=#{params[:id]}"
  run_sql(sql)
  if request.xhr?
    json [{status: :ok}]
  else
    redirect_to '/items'
  end
end

delete '/items/:id' do
  sql = "delete from items where id = #{params[:id]}"
  run_sql(sql)
  if request.xhr?
    json [{status: :ok}]
  else 
    redirect_to '/items'
  end
end



private

def run_sql(sql)
  connect = PG.connect(dbname: 'todo', host: 'localhost')
  begin
    result = connect.exec(sql)
  ensure
    connect.close
  end
  result
end