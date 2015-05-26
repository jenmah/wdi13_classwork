require 'pry'
require 'pg'

db = PG.connect(dbname: 'facebook', host: 'localhost')

begin
  db.exec( "select * from people" ) do |result|
    result.each do |row|
      puts "#{row['first']} #{row['last']}"
    end
  end
  puts "What's your full name?"
  name = gets.chomp.split
  puts "What's your date of birth?"
  dob = gets.chomp
  puts "What's your relationship status?"
  relationship = gets.chomp
  puts "What city are you in?"
  city = gets.chomp

  print "#{name} was born on #{dob} and lives in #{city}."


  sql = "INSERT INTO people (first, last, dob, relationship, city) VALUES ('#{name[0]}', '#{name[1..-1].join(' ')}', '#{dob}', '#{relationship}', '#{city}' );"

  db.exec(sql)
ensure
  db.close
end
