require 'rest-client'

class NewsController < ApplicationController
  def index
  end

  def statistics
  	data = Statistic.counts_by_media(params)
  	render json: data.flat_map { |d| d["stats"].collect { |s| { :media => d["value"], :date => s["value"], :count => s["count"] } } }
  end
end
