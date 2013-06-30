#encoding:utf-8
require 'selenium-webdriver'

describe 'test_baidu_title' do 
=begin
	it 'test_baidu' do

	dr = Selenium::WebDriver.for :chrome

	dr.get 'http://www.baidu.com'

	dr.title.should == '百度一下，你就知道'

	end
=end
	it '真理是正确的' do
		真理 = true
		真理.should be_true
	end

	it '炒股是错误的' do
		炒股 = false
		炒股.should be_false
	end

 	it '包含字符串' do
 		#'abc'.include?('a').should be_true
 		'abc'.should include('a')
 	end

 	it '不包含字符串' do
 		'abc'.should_not include 'd'
 	end


end