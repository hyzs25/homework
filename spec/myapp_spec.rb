#encoding:utf-8
require 'selenium-webdriver'

describe "baidu mainpage" do

  it "查找百度按钮" do 
	dr = Selenium::WebDriver.for :chrome
	dr.get 'http://www.baidu.com'
	a = dr.find_element(:id,'su')

	a.should displayed
  end
end
