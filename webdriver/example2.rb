require 'selenium-webdriver'

url = 'http://www.jd.com'

driver = Selenium::WebDriver.for :chrome
#puts driver.window_handle
#driver.maximizeWindow('f1-2')
#driver.visiable=(false)
driver.manage.window.maximize

driver.get url

puts driver.find_elements(:class,'p-img ld')[0]