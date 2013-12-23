#encoding:utf-8
module FeedModule
	include PageObject
	#新鲜事模块
	div :feed_list, :class => 'feed-list'

	#回复框
	text_area :reply do |page|
		page.feed_list_element.text_area_element(:index => 0)
	end

	#回复按钮
	link :reply_submit, :class => 'submit', :index => 0
	#回复列表
	div :reply_list, :class => "feed-replies", :index => 0

	#最后一条回复
	paragraph :last_reply do |page|
		page.reply_list_element.paragraph_element(:class => 'text', :index => -1)
	end

	#状态新鲜事内容  2038照片新鲜事内容
	h3 :status_feed do |page|
		page.feed_list_element.h3_element(:index => 0)
	end


	#回复新鲜事方法
 	def reply_action content
 		self.reply_element.when_present.click
 		sleep 1
 		self.reply = content
 		self.reply_submit
 		sleep 2
 	end


end