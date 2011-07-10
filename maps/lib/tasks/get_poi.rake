namespace :poiData do

	desc "Get the data from file"
	task:get_poi => :environment do
	
		file = File.open('C:\winRuby187\maps\lib\tasks\poi_venues.csv', 'r')
		
		file.each_line("\n") do |row|
			entry = row.split(",")
			p = Poi.new( :lat => entry[2], :lon => entry[3], :name => entry[4][0], :type => entry[4][6])
			# p.id = entry[0].to_i
			p.save
		end
		puts "done\n"
	end
end