require 'open-uri'

namespace :scrape do
  desc "Scrapes WeGotTickets for concert listings"
  task get_concert_info: :environment do
  	puts 'Getting concert listings...'
  	Concert.all.each do |concert|
  		begin
  			page = Nokogiri::HTML(open("http://www.wegottickets.com/searchresults/page/1/all"))
  			artist = page.css('h3 .event_link').children.shift
  			concert.update_attributes(artist: artist)
  		rescue Exception => e
  			puts "Oops! #{artist} wasn't found."
  		end
  	end
  	puts 'done!'
  end

end
