#encoding:utf-8
require 'win32ole'

class IndexPage < LazymanPage
#	include FeedModule
	attr :photo_url

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

	#照片的div
	div :photo_box, :class => "photo-oper-box", :index => 0
	#--------------------------------------------------------------

	#照片添加编辑框
	text_area :photo_discription, :class => 'upload-descript-content', :index => 0

	#上传中相册名称编辑框
	text_field :album_name, :id => 'newAlbum0'

	#照片minifeed
	def photo_minifeed 
		b = @browser.div(:class => 'upload-images', :index => 0).div(:class => 'action').text
		return b
	end


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
 	def publish_photo photo, content
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
		Watir::Wait.until {@browser.span(:id => 'progressText').text =~ /成功上传/}
		sleep 0.5
		self.photo_discription = content
		self.album_name = content
#		@photo_url = 
		@browser.link(:id => 'uploadBtn').when_present.click
		sleep 1
		turn_to PhotoListPage 
 	end

end
