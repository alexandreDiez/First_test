class WelcomeController < ApplicationController

  require 'mechanize'
  require 'nokogiri'
  require 'open-uri'

  def index

    mechanize = Mechanize.new

    page = Nokogiri::HTML(open("http://www.nhl.com/stats/player"))

    @tableau = page.css('table#stats-data-table tbody td')
    # @tableau = page.search("table").map{ |n| n.text}  #.search('*/tr')[-2].search('td')
    #('#stats-data-table')
  end
end
