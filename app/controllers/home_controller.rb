class HomeController < ApplicationController

	def index
	    rdb = RestApi.new
		@result = rdb.call		
	end
end
