#encoding:utf-8
class WwwIndexPage < LazymanPage
	
	include FeedModule

	page_url "http://www.renren.com/#{$config.pageid}"


end
