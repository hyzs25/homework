require 'selenium-webdriver'
require 'win32ole'

url = 'http://www.renren.com'

driver = Selenium::WebDriver.for :chrome

driver.manage.window.maximize

driver.get url

driver.find_element(:id,'email').send_keys('hytest003')
driver.find_element(:id,'password').send_keys('hytesting')
driver.find_element(:id,'login').click

sleep 1

#(1..10000).each do |s|
driver.find_element(:class,'global-publisher-photo-trigger').click
driver.find_element(:class,'upload-selector').find_element(:tag_name,'a').click

sleep 2
driver.find_element(:id,'flashDiv').click

ai = WIN32OLE.new("AutoItX3.Control")
ai.Send '004.jpg'
ai.Send('{ENTER}')
#end