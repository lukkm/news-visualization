class Statistic < ActiveResource::Base
	self.site = "http://192.168.0.17:8080/news-visualization/api/"

	attr_accessor :date, :media

	def self.counts_by_media(params = {})
    	RestClient.get "http://192.168.0.17:8080/news-visualization/api/statistics", params
    end
end