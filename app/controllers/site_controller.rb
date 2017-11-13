require "geoip"

class SiteController < ApplicationController	
	def index
		remote_ip = request.remote_ip
		logger.debug "remote ip was #{remote_ip}"

		logger.debug remote_ip == "::1"
		if remote_ip == "::1" 
			remote_ip = "164.39.71.226"
		end

		geoip_city = GeoIP.new('GeoLiteCity.dat').city(remote_ip)

		city_name = geoip_city ? geoip_city.city_name : 'Bristol'

		bn = BreadName.find_by(city_name: city_name)

		if bn.nil?
			not_found
			return
		end

		@city_name = city_name
		@bread = bn.bread_name
	end
end
