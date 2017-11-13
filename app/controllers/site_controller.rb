require "geoip"

class SiteController < ApplicationController	
	def index
		remote_ip = request.remote_ip
		logger.debug remote_ip == "::1"
		if remote_ip == "::1" 
			remote_ip = "164.39.71.226"
		end

		c = GeoIP.new('GeoLiteCity.dat').city(remote_ip)
		logger.debug c.inspect

		if c.nil? 
			#render plain: "No bread for you, chump!"
			# not_found
			# return
			c = 'Bristol' # Default to bristol if city not found
		end

		bn = BreadName.find_by(city_name: c.city_name)

		if bn.nil?
			not_found
			return
		end

		@city_name = c.city_name
		@bread = bn.bread_name
	end
end
