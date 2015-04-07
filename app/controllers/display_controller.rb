class DisplayController < ApplicationController


	def allSnaredrums
		@snaredrums=Snaredrum.all
 	end
	def allBassdrums
		@bassdrums=Bassdrum.all
 	end
	def allHightomtoms
		@hightomtoms=Hightomtom.all
 	end
	def allMiddletomtoms
		@middletomtoms=Middletomtom.all
 	end
	def allFloortomtoms
		@floortomtoms=Floortomtom.all
 	end
	def allHihats
		@hihats=Hihat.all
 	end
	def allRides
		@rides=Ride.all
 	end
	def allCrashes
		@crashes=Crash.all
 	end
		
end
