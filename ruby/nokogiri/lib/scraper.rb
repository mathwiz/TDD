require 'httparty'
require 'nokogiri'

class Scraper
  attr_reader :page, :parsed, :url

  def initialize(url)
    @url = url
  end

  def get()
    @page = HTTParty.get(@url)
    @parsed = Nokogiri::HTML(@page) 
  end

end

