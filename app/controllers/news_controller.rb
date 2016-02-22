require 'rest-client'

class NewsController < ApplicationController
  def index
  	@statistics = Statistic.counts_by_media(:from => '2015-08-01', :to => '2015-08-01')
  end

  def statistics
  	render json: Statistic.counts_by_media(:from => '2015-08-01', :to => '2015-08-01')
  end
end
