class FyagraController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  def index
    fyagra = 'http://fya-gra.ru'
    page = Nokogiri::HTML(open(fyagra + '/page/2.html'))
    @links = page.css('.content .menu')[0].css('a')

    page_menu = Nokogiri::HTML(open(fyagra + @links[0]['href']))
    logger.warn page_menu.css('#SCCartFormModel li[class=header]')
  end
end
