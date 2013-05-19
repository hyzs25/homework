require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome

url = "http://www.baidu.com"

driver.get(url)

#打印页面title
puts driver.title
#打印页面地址
puts driver.current_url
#打印页面源代码
puts driver.page_source

driver.quit()