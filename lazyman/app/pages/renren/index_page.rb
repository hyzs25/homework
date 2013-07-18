#encoding:utf-8
class IndexPage < LazymanPage
	include FeedModule

	page_url 'http://page.renren.com/601549975'

	text_area :status_input, :id => 't1'
	button :publisher, :class => 'post-btn'
	button :input_submit, :value => '确定'


	#发布状态新鲜事
 	def publish status
 		self.status_input = status
 		self.publisher
 		sleep 1
 		self.input_submit
 		sleep 3
 	end

end
