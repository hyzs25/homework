require 'selenium-webdriver'
require 'page-object'

class BaiduPage
	include PageObject

	page_url 'http://www.baidu.com'
	text_field(:keyword, :id => 'kw')
	button(:search, :id => 'su')

end


browser = Selenium::WebDriver.for :chrome
baidu_page = BaiduPage.new(browser)
baidu_page.goto

baidu_page.keyword_element.when_present(timeout = 5).send_keys('watir')
#baidu_page.keyword = 'watir-webdriver'
puts baidu_page.keyword
puts baidu_page.keyword_element.class
baidu_page.search