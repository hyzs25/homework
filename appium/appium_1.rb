require "selenium-webdriver"

capabilities = {
	'app' => "D:\\adt\\APK\\mytest.apk",
	'browserName' => '',
	'platform' => 'windows',
	'version' => '4.2',
	'device' => 'android',
	'app-activity' => 'MainActivity',
	'app-package' => 'com.example.mytest'
}

server_url = 'http://127.0.0.1/wd/hub'

dr = Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)

ts = dr.find_element(:name => 'tv_ch').text
puts ts.text