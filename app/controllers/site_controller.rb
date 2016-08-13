require "geoip"

class SiteController < ApplicationController	
	def index
		remote_ip = request.remote_ip
		logger.debug remote_ip == "::1"
		if remote_ip == "::1" 
			remote_ip = "164.39.71.226"
		end

		c = GeoIP.new('GeoLiteCity.dat').city(remote_ip)
		# puts c.inspect

		if c.nil? 
			render plain: "No bread for you, chump!"
		else

			city_list = {
				"Aberdeen" => "Piece",
				"Armagh" => "Roll",
				"Manchester" => "Bap" 
			}

			@city_name = c.city_name

			@bread = city_list[c.city_name]
		end
	end

end
