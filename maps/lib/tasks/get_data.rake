

namespace :fileData do

	desc "Get the data from file"
	task:get_data => :environment do
	
		file = File.open('C:\winRuby187\maps\lib\tasks\venue_table.csv', 'r')
		
		file.each_line("\n") do |row|
			entry = row.split(",")
			v = Venue.new( :latitude => entry[1], :longitude => entry[2], :actioncount => entry[4])
			v.venue_timestamp = Time.at(entry[0].to_i)
			v.venue_id = entry[3].to_i
			v.save
		end
		puts "done\n"
	end
end