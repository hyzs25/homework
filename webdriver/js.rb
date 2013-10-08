require 'watir-webdriver'
require 'watir-webdriver/extensions/alerts'

br = Watir::Browser.new :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'alert.html'))
br.goto file_path

#方法1
br.alert do
	br.button(:name => "alterbutton").click
end

#方法2
br.button(:name => "alterbutton").click
a = br.driver.switch_to.alert
a.accept


#方法3
br.execute_script("window.alert = function() {}")
br.button(:name => "alterbutton").click