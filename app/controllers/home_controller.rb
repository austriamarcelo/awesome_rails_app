class HomeController < ApplicationController

	def index
		@API_URL = "https://reqres.in/api/users"
		    # api =  RestClient.post(@API_URL, 
			   #  { token_key: @SEARCH_API_TOKEN_KEY,
			   #    search_parameters:
			   #     { 
			   #        "string": "premium_listings: #{ads_keyword(session[:what])}#{get_include_where}"
			   #     }
			   #  }.to_json, { accept: :json})


		   		# @response =  RestClient.get @API_URL, {params: {page: 1}}
			    # @result = JSON.parse(@response.body).with_indifferent_access
			    rdb = RestApi.new
				@result = rdb.call
			


	end
end
