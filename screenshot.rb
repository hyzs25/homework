require "selenium-webdriver"
dr = Selenium::WebDriver.for :ie
dr.manage.window.maximize
dr.get 'https://github.com/easonhan007/webdriver_guide/blob/master/08/simple_locate.md'
sleep 2
dr.save_screenshot('./1.jpg')
dr.quit
