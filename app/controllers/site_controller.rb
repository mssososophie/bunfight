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
			not_found
			return
		end

		debug_city = "Bristol"

		# bn = BreadName.find_by(city_name: c.city_name)
		bn = BreadName.find_by(city_name: debug_city)

		if bn.nil?
			not_found
			return
		end

		# unhighlight this to brute force it
		# @city_name = c.city_name
		@city_name = debug_city
		@bread = bn.bread_name
	end

end
