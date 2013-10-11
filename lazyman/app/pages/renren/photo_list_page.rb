#encoding:utf-8
class PhotoListPage < LazymanPage

	def go_detail
		@browser.ul(:class => 'private-album').li(:class => 'photo-item').a.click
		turn_to PhotoDetailPage
	end

end