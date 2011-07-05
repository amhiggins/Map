class Venue < ActiveRecord::Base


	def getHash()
		@temp = {}
		if( self.actioncount <= 10)
			num = "1"
			@temp = {"id" => (self.venue_id), "code" => (num), "date" => (self.venue_timestamp.to_s), "lat" => (self.latitude), "lon" => (self.longitude), "actioncount" =>  (self.actioncount)}
		elsif( self.actioncount <= 20) 
			num = "2"
			@temp = {"id" => (self.venue_id), "code" => (num), "date" => (self.venue_timestamp.to_s), "lat" => (self.latitude), "lon" => (self.longitude), "actioncount" => (self.actioncount)}
		elsif( self.actioncount <= 40)
			num = "3"
			@temp = {"id" => (self.venue_id), "code" => (num), "date" => (self.venue_timestamp.to_s), "lat" => (self.latitude), "lon" => (self.longitude), "actioncount" => (self.actioncount)}
		elsif( self.actioncount <= 60)
			num = "4"
			@temp = {"id" => (self.venue_id), "code" => (num), "date" => (self.venue_timestamp.to_s), "lat" => (self.latitude), "lon" => (self.longitude), "actioncount" => (self.actioncount)}
		else	#(crimes[i].actioncount >= 100)
			num = "5"
			@temp = {"id" => (self.venue_id), "code" => (num), "date" => (self.venue_timestamp.to_s), "lat" => (self.latitude), "lon" => (self.longitude), "actioncount" => (self.actioncount)}
		end
		return @temp
	end

end
