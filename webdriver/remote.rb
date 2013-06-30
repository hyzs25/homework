#encoding:utf-8

require 'selenium-webdriver'

 driver = Selenium::WebDriver.for(:remote, :url => "http://localhost:4444/wd/hub", :desired_capabilities => :chrome)