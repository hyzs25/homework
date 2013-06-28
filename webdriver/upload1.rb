require 'selenium-webdriver'
require 'win32ole'

url = 'http://www.renren.com'

@driver = Selenium::WebDriver.for :chrome

@driver.manage.window.maximize

@driver.get url

@driver.find_element(:id,'email').send_keys('hytest001')
@driver.find_element(:id,'password').send_keys('hytesting')
@driver.find_element(:id,'login').click
sleep 1
@driver.navigate.to 'http://page.renren.com/601561709/channel-albumshow-833425315'
sleep 2

def upload()
	@driver.find_element(:class,'upload').click
	#@driver.find_element(:class,'upload-selector').find_element(:tag_name,'a').click

	sleep 1
	@driver.find_element(:id,'flashDiv').click

	sleep 1

	begin
	ai = WIN32OLE.new("AutoItX3.Control")
	ai.Send '"488.jpg" "004.jpg" "013.jpg" "014.jpg" "20.jpg" "023.jpg" "025.jpg" "026.jpg" "027.jpg" "028.jpg" "28[2].jpg" "030.jpg" "032.jpg" "32[1].jpg" "057.jpg" "058.jpg" "077.jpg" "085.jpg" "086.jpg" "095.jpg" "096.jpg" "103.jpg" "114.jpg" "115.jpg" "119.jpg"'
	ai.Send('{ENTER}')
	end



#	sleep 10
	#@driver.find_element(:class,'open-photo-names').click
	#@driver.find_element(:id,'albumList0').find_element(:id,'888223879').click

	@driver.find_element(:id,'uploadBtn').click
	sleep 2

	rescue
		@driver.refresh

end



(1..5000).each do |s|

begin
	if s % 10 != 0
		upload()
	else
		sleep 120
		upload()
	end
rescue
	retry
end
end

