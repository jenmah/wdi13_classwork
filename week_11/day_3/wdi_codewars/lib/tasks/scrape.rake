require 'open-uri'

namespace :scrape do
  desc "Scrapes Codewars for the latest scores for our users"
  task get_user_scores: :environment do
  	puts 'Getting scores...'
  	User.all.each do |user|
  		begin 
  			page = Nokogiri::HTML(open("http://www.codewars.com/users/#{user.name}"))
	  		score = page.css('.honor').text.scan(/\d+/).shift.to_i
	  		user.update_attributes(score: score)
  		rescue Exception => e
  			puts "Oh no! The user #{user.name} is not found!"
  		end
  	end
  	puts 'done!'
  end

end
