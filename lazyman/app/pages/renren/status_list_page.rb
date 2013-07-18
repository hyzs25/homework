#encoding:utf-8
class StatusListPage < LazymanPage

	page_url 'http://page.renren.com/601549975/fdoing'


	div :status_list, :class => 'feed-list'                 

	h3 :status do |page|   
		page.status_list_element.h3_element(:index => 0)
	end

	link :status_delete do |page|
		page.status_list_element.link_element(:class => 'delete', :index => 0)
	end

	button :status_delete_ok, :class =>" input-submit"

	def status_delete_action
		self.status_element.hover
		self.status_delete_element.focus
		self.status_delete
		self.status_delete_ok
		sleep 1
		@browser.refresh
	end

end
