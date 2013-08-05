#encoding:utf-8
class IndexPage < LazymanPage
#	include FeedModule

	page_url "http://page.renren.com/#{$config.pageid}"

	link :status_button, :class => 'global-publisher-status-trigger'
	text_area :status_input, :class => 'status-content'
	button :input_submit, :class => 'submit'
	span :status_minifeed, :class => 'status-detail', :index => 0

	#发布状态新鲜事
 	def publish status
 		self.status_button
 		self.status_input_element.when_present
 		self.status_input= status
 		self.input_submit
 		sleep 4
 	end

end
