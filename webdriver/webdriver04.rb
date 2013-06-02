#encoding:gbk
require 'selenium-webdriver'

ie = Selenium::WebDriver.for :ie

url = 'http://www.baidu.com'

ie.get url

selenium_url = "http://www.renren.com"

ie.get selenium_url

#后退
ie.navigate.back

#前进
ie.navigate.forward

#刷新
ie.navigate.refresh

#获取当前页面的URL
puts ie.current_url

#获取当前页面的title
puts ie.title

ie.close