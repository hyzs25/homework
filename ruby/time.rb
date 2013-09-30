#encoding:utf-8
require 'watir-webdriver'

b = Watir::Browser.new :chrome
b.window.resize_to("300","700")
b.driver.manage.timeouts.implicit_wait = 5000
b.goto "https://account.xiaomi.com/pass/serviceLogin"
b.text_field(:id,"user").value = '119966710@qq.com'
b.text_field(:id,"pwd").value = 'hy5024800'
b.button(:class,"no_bg").click
b.goto "http://p.www.xiaomi.com/m/zt/open/index.html"

begin
	btn = b.link(:class => 'btn_buy')
	Watir::Wait.until {btn.exists?}
	btn.click
end

=begin	
end_time = '2013-09-27 14:30:00 +0800'
until Time.now.to_s > end_time
	puts "time is going"
end
=end

#puts Time.now.super_class
