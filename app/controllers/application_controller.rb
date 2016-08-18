class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def not_found
	  raise ActionController::RoutingError.new('Doh! Bread name not found')
	end

end