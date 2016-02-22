class Entry < ActiveResource::Base
	self.site = "http://192.168.0.17:8080/news-visualization/api/"
	self.format = :json

	def self.count(params = {})
    	get(:count, params)
    end
end