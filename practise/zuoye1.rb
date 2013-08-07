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

eles = browser.divs(:class => 'news_type2 full_screen')


eles.each do |a|
	t = a.h2.text
	s = a.p.text
	f.write_file t,s
end  

sleep 3
browser.close
f.close_file

