# Write your code here



require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'

class GetRequester



    def initialize(url)
        @uri = URI.parse(url)
    end

    def get_response_body
        response = Net::HTTP.get_response(@uri)
        response.body
    end

    def parse_json
        json_parsed = JSON.parse(self.get_response_body)
    end



end 