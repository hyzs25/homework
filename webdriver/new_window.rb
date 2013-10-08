#encoding:utf-8
require "watir-webdriver"

dr = Watir::Browser.new :chrome
dr.goto "http://www.baidu.com"
dr.text_field(:id,"kw").set "123"
dr.button(:id,"su").click
sleep 1

dr.link(:class=>"favurl",:index=>0).click	
dr.window(:title => "hao123_上网从这里开始").use

dr.text_field(:name => "word").set "good!"