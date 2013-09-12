#encoding:utf-8
require 'win32ole'

class IndexPage < LazymanPage
#	include FeedModule

	page_url "http://page.renren.com/#{$config.pageid}"

	#新鲜事模块
	div :minifeed, :class => "p-feed-title"

	#发布状态按钮--------------------------------------------------
	link :status_button, :class => 'global-publisher-status-trigger'
	text_area :status_input, :class => 'status-content'
	button :input_submit, :class => 'submit'
	#--------------------------------------------------------------
	#状态minifeed
	span :status_minifeed, :class => 'status-detail', :index => 0

	#发布照片按钮--------------------------------------------------
	link :photo_button, :class => "global-publisher-photo-trigger"
	div :upload_button, :id => "flashUploadBtn"
	link :upload_ok, :id => 'uploadBtn'
	#--------------------------------------------------------------

	#日志minifeed
	link :note_minifeed do |page|
		page.minifeed_element.link_element(:class =>'title', :index => 0)
	end


	#发布状态新鲜事
 	def publish_status status
 		self.status_button
 		self.status_input_element.when_present
 		self.status_input= status
 		self.input_submit
 		sleep 4
 	end

 	#发布照片
 	def publish_photo photo
 		self.photo_button
 		self.upload_button_element.when_present
 		self.upload_button_element.click
 		sleep 1

		begin
		ai = WIN32OLE.new("AutoItX3.Control")
		ai.Send(photo)
		sleep 1
		ai.Send('{ENTER}')
		end
# 		puts @browser.span(:id => 'progressText').text
#		Watir::Wait.until {@browser.span(:id => 'progressText').text =~ /成功上传/}
		sleep 2
		@browser.link(:id => 'uploadBtn').when_present.click
		sleep 1
 	end

end
