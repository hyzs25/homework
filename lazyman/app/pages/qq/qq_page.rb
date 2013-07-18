#encoding:utf-8
class QqPage < LazymanPage
	page_url 'www.qq.com'

	text_field :keyword, :name => 'w'
	button :search, :text => '搜搜'

	def search_for w	
		self.keyword = w
		self.search
		self.attach_to_window :url => "http://www.soso.com/q?cid=w.q.in.sb.web&ie=utf-8&w=#{w}"
		turn_to SearchResultPage
	end

end