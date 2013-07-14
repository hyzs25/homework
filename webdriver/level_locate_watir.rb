#encoding: utf-8
require 'watir-webdriver'

dr = Watir::Browser.new :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'level_locate.html'))

dr.goto file_path

dr.link(:text, 'Link1').click
=begin
wait = Selenium::WebDriver::Wait.new({:timeout => 30})
wait.until { dr.find_element(:id, 'dropdown1').displayed? }
=end
menu = dr.ul(:id, 'dropdown1').when_present.link(:text, 'Another action')

menu.focus
#dr.action.move_to(menu).perform()

sleep 2
dr.quit
