class Statistic
	@@base_url = "http://192.168.0.17:8080/news-visualization/api/"

	attr_accessor :date, :media

	def self.counts_by_media(params = {})
    	JSON.parse(RestClient.get @@base_url + "statistics", {:params => params})
    end
end