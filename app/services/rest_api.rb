require 'rest-client'
require 'json'

class RestApi

    def initialize
      @url = 'https://reqres.in/api/users'
      @headers = {
        'content-type': "application/json",
        'x-apikey': "-------",
        'cache-control': "no-cache"
      }
    end    

    def call
        res = RestClient.get(@url, @headers)
        body = JSON.parse(res, { symbolize_names: true })
        body
    end
end