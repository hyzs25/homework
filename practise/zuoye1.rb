#encoding:utf-8
require "watir-webdriver"

class ManageFile

	def initialize
		@i = 1
	end

	def open_file
		file = Dir.pwd + '/zuoye1.txt'
	#判断文件是否存在
	if File.exists?(file)
		@txt = File.open(file, 'w')
	else
		@txt = File.new(file, 'w')
	end
	end
	
	def write_file title,summary	
	#输入文章的标题与内容
	@txt.puts "-------------第#{@i}篇文章----------------"
	@txt.puts "标题:#{title}"
	@txt.puts "内容:#{summary}"
	@txt.puts "\n"
	@i+=1
	end

	def close_file
		@txt.close
	end
end

f = ManageFile.new 
f.open_file

url = 'http://www.infoq.com/cn/development/articles/7'

browser = Watir::Browser.new :chrome
browser.window.maximize
browser.goto url

sum = browser.divs(:class => 'news_type2 full_screen').size


sum.times do |e|
js =<<JS
	 q = document.getElementById("id_geo_banner");
	 q.style.display = "none";
JS
	if browser.div(:id,"id_geo_banner").exists?
		browser.execute_script js
	end

	eles = browser.div(:class => 'news_type2 full_screen',:index => e)
	eles.h2.a.click
	sleep 1
	t = browser.h1(:class => 'general with_pic').text
	s = browser.div(:class => 'text_info text_info_article').text
	f.write_file t,s
	browser.back
	sleep 2
end  

sleep 3
browser.close
f.close_file

