#encoding: utf-8
class BaiduPage < HelloPage
	page_url 'www.baidu.com'
	
	text_field 'keyword', id: 'kw'
	button 'search', id: 'su'

	def search_for kk
		self.keyword = kk
		search_element.click
		turn_to SearchResultPage
	end

end
