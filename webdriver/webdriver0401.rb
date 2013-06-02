#encoding:gbk
require "selenium-webdriver"

ie = Selenium::WebDriver.for :ie

url = "Http://www.baidu.com"

ie.get url

ie.find_element(:id, "kw").send_keys('dota6.78')
ie.find_element(:id, 'su').click