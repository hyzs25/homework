require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome

sleep 2

puts 'browser will be closed'

#dr.close

dr.quit() 

puts 'browser is closed'