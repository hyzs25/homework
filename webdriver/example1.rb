require 'selenium-webdriver'

url = 'http://www.qq.com'

driver = Selenium::WebDriver.for :chrome
#puts driver.window_handle
#driver.maximizeWindow('f1-2')
#driver.visiable=(false)
driver.manage.window.maximize

driver.get url

driver.save_screenshot('.\1.png')
=begin
driver.find_element(:id,'email').send_keys('hytest004')
driver.find_element(:id,'password').send_keys('hytesting')
driver.find_element(:id,'login').click

wait = Selenium::WebDriver::Wait.new({:timeout => 30})
wait.until {driver.find_element(:id,'more-feed')}
=end




ensure driver.quit
#js = <<JS
#  q = document.getElementById("global-publisher"); 
#  q.style.border = "2px solid red";
#JS

#driver.execute_script js
