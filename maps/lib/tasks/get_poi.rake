require 'json'
namespace :poiData do

	desc "Get the data from file"
	task:get_poi => :environment do
	
		file = File.open('C:\winRuby187\maps\lib\tasks\candidates.csv', 'r')
		@failed = 0
		@modtype = nil
		file.each_line("\n") do |row|
			
			@entry = row.split("|")
			@eSplit = @entry[4].split(",")
				k = @eSplit.length
				k = k - 1
				for i in 0..k
					j = i.to_i
					match = /(types)/.match(@eSplit[j].to_s)
					if(match)
						
						@modtype = @eSplit[j]
					end
				end
				@byparts = @entry[4].split(",")
				@modname = @byparts[0]
				
				begin
					
					@modname.gsub!(/"/, '')
					@modname.gsub!(/(\{name:)/, '')

					@modtype.gsub!(/(\{types:|types:)/, '')
					@modtype.gsub!(/\[|\]|\}/, '')					
					@modtype.gsub!(/"/, '')

				rescue
					
				end
				

					begin
						p = Poi.new( :lat => @entry[2].to_f, :lon => @entry[3].to_f )
						temp = @entry[0].gsub!(/"/, '')
						p.id = temp.to_i
						p.name = @modname
						p.buildingType = @modtype
						p.save
					rescue
						debugger
						puts "Failed to parse json"

					end		
		end
		
		puts "done reformat"
		puts "done"

	end
end