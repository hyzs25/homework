require "selenium-webdriver"

class Selenium::WebDriver::Element
	def flash
		@bridge.executeScript(high_light_script, self)
	end #flash

	def high_light_script
		'argument[0].style.border = "3px solid red"'
	end
end

def html_path(file_name)
	'file:///' + File.join(Dir.pwd, file_name)
end