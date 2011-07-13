class Poi < ActiveRecord::Base

	def getHash()
		@temp = {}
		@show = self.buildingType
		@showD = self.buildingType.to_s
		case self.buildingType.to_s
			when "school"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_school.png" }
			
			when "gas_station"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_gas_station2.png" }

			
			when "food"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_store2.png" }

			
			when "restaurant"
				if(self.name ==  "Mc Donald's") 
					@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_fastfood3.png" }

				elsif( (self.id % 2) == 0) 
					@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_restaurant2.png" }
				
				else   
					@temp = {"id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_fastfood2.png" }
				end
			
			when "bar"
				if( (self.id % 2) == 0 )
					@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_bar3.png" }
				
				elsif( (self.id % 3) == 0) 
					@temp =  {"id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_bar2.png" }
				
				else
					@temp = {  "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_bar1.png" }
				end
			
			when "bank"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_bank1.png" }
			
			when "lodging"
				@temp = {  "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_hotel3.png" }
			
			when "cafe"
				if(self.name ==  "Starbucks")  
					@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_coffeeshop3.png" }
				else  
					@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_coffeeshop2.png" }
				end
			
			when "store"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_store1.png" }
			
			when "grocery_or_supermarket"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\s_store2.png" }
			
			when "police"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_policestation.png" }
			
			when "hospital"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_hospital.png" }
			
			when "train_station"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_trainstation.png" }
			
			when "transit_station"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_trainstation.png" }
			
			when "clothing_store"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_store3.png" }
			
			when "airport"
				@temp = { "id"=>  self.id, "lat"=>  self.lat, "lon"=>  self.lon , "types"=>  self.buildingType, "url"=>  "images\\l_airport.png" }
			
		end
		#debugger
		return @temp
	end
end
