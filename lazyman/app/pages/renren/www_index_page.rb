#encoding:utf-8
class WwwIndexPage < LazymanPage
	
	include FeedModule

	page_url "http://www.renren.com/#{$config.pageid}"

	#关注内容
	div :page_content, :id=> 'friend-content'

end
