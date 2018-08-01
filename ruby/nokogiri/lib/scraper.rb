require 'httparty'
require 'nokogiri'

class Scraper
  attr_accessor :page, :parsed, :url

  def get()
    @page = HTTParty.get(@url)
    @parsed = Nokogiri::HTML(@page) 
  end

end

