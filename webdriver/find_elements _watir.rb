#encoding: utf-8
require 'watir-webdriver'

dr = Watir::Browser.new :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'checkbox.html'))

dr.goto file_path

# 选择所有的checkbox并全部勾上
dr.checkboxes.each {|c| c.set(true)}
dr.refresh()
sleep 1

# 打印当前页面上有多少个checkbox
puts dr.checkboxes.size
=begin
# 选择页面上所有的input，然后从中过滤出所有的checkbox并勾选之
dr.find_elements(:tag_name, 'input').each do |input|
	input.click if input.attribute(:type) == 'checkbox'
end 
sleep 1
=end
# 把页面上最后1个checkbox的勾给去掉
dr.checkboxes.last.click

sleep 2
dr.quit