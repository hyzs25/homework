
$DEBUG = 1

require "selenium-webdriver"

driver = Selenium::WebDriver.for :ff
	
driver.navigate.to "http://www.baidu.com"

puts driver.current_url

driver.close
