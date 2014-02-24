#encoding:utf-8
require 'appium_lib'

apk = {
	device: :android,
	app_path: 'D:\selenium_webdriver_full.apk',
	app_package: 'com.hy.selenium_webdriver',
	app_activity: '.MainActivity',
	app_wait_activity: '.MainActivity'
}

app = Appium::Driver.new(apk)
app.start_driver

app.find_element(:tag_name, "imageView").click

app.find_element(:name, "Ruby").click

if app.find_element(:name, "RUBY版").displayed?
	puts "成功进入list页面"
	app.find_element(:tag_name, "listView").find_elements(:tag_name,"LinearLayout")[0].click
	text = app.find_elements(:tag_name, 'textView')[1].text
	puts text
else
	puts "失败！！"
end

app.x