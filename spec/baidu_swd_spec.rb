#encoding:utf-8
require 'selenium-webdriver'
require 'rspec'

describe "it should creat a post successfully" do
	before :all do 
		@dr = Selenium::WebDriver.for :chrome
		@url = 'http://hi.baidu.com/pub/show/createtext'
		@dr.get @url
	end

	it "creat a post" do
		login(@dr)
		@dr.get @url
		@dr.find_element(:id, "title").send_keys "发布日志：#{Time.now.to_s}"
		content = "今天天气不错"
		set_element = "document.getElementById('ueditor_0').contentWindow.document.body.innerText = '#{content}'"
		sleep 2
		@dr.execute_script(set_element)
		@dr.find_element(:id, 'qPubBtnSubmit').click
		sleep 3
		@dr.find_elements(:class, 'feed-main-box').first.text.should include "发布日志"
	end

	after :all do
		@dr.close
	end

end

def login dr 

	uid = '0173F00E405FDBFA6CAD5C03EA730B81'
	bduss = '3N0RG5IaEZRc1k1WGg0ZUQ3LVoxSkZjR3FSVHhyckt4WU5-YVgzb1FCLTVafmRSQVFBQUFBJCQAAAAAAAAAAAEAAABvHwcBaHl6czI1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALnaz1G52s9Rb'
	dr.manage.delete_all_cookies
	dr.manage.add_cookie(name:'BAIDUID',value:uid)
	dr.manage.add_cookie(name:'BDUSS',value:bduss)

end