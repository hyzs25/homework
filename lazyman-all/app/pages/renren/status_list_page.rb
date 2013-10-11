#encoding:utf-8
class StatusListPage < LazymanPage
	include ReplyModule

	page_url "http://page.renren.com/#{$config.pageid}/channel-statuslist"
     
     #最新状态         
	span :status, :class => 'status-info',:index => 0
	 #状态删除按钮
	link :status_delete, :class => 'del-status', :index => 0
	 #删除确认
	button :status_delete_ok, :value => '确定'

	def status_delete_action
		self.status_delete
		self.status_delete_ok_element.when_present
		self.status_delete_ok
		sleep 1
		@browser.refresh
	end

end
