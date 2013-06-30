#encoding:utf-8
require 'selenium-webdriver'


describe '测试dom状态' do

	before(:all) do
		@dr = Selenium::WebDriver.for :chrome
		file_path = 'file:///' + File.expand_path(File.join('.', 'status.html'))
		@dr.get file_path
		
	end

	it '测试文本框是否可用' do
	text_field = @dr.find_element(:name, 'user')
	text_field.should_not be_enabled
	end

# 直接用enabled?方法去判断该button的话返回的会是true
# 这是因为button是使用css方法去disabled的，并不是真正的disable
# 这时候需要判断其class里是否有disabled这值来判断其是否处于disable状态
	it '测试按钮是否可点击' do
	@dr.find_element(:class, 'btn').should be_enabled
	end

# 隐藏掉text_field
# 判断其是否显示
	it '测试text_field是否显示' do
		text_field = @dr.find_element(:name, 'user')
		@dr.execute_script('$(arguments[0]).hide()', text_field)
		text_field.should_not be_displayed
	end

# 使用click方法选择raido
	it '测试radio是否被选中' do
	radio = @dr.find_element(name: 'radio')
	radio.click()
	radio.should be_selected
	end

# 判断元素是否存在
	it '测试none元素是否存在' do
	begin
		@dr.find_element(id: 'none').should be_true
	rescue Selenium::WebDriver::Error::NoSuchElementError
		puts 'element does not exist'
	end 
	end

	after(:all) do
		@dr.quit()
	end
end