#encoding:utf-8
module ReplyModule
	include PageObject
	#回复按钮
	link :reply_component, :class => 'comment-it', :index => 0

	#回复框
	text_area :reply, :class => 'comment-input', :index => 0

	#回复按钮
	link :reply_submit, :class => 'p-message-submit', :index => 0
	#回复列表
	div :reply_list, :class => "replies", :index => 0

	#最新回复
	paragraph :new_reply, :class => 'text', :index => 0


	#回复方法
 	def reply_action content
 		self.reply_component_element.when_present.click
 		sleep 1
 		self.reply = content
 		self.reply_submit
 		sleep 2
 	end


end