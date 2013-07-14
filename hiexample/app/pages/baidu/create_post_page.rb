#encoding: utf-8
class CreatePostPage < HiexamplePage
	page_url 'http://hi.baidu.com/pub/show/createtext'
	
	text_field 'title', id: 'title'
	link 'submit', id: 'qPubBtnSubmit'

	def content= kw
		set_element = "document.getElementById('ueditor_0').contentWindow.document.body.innerText = '#{kw}'"
		sleep 2
		@browser.frame(:id,"ueditor_0").wait_until_present
		@browser.execute_script(set_element)
	end

	def create_post title,c
		self.title = title
		self.content=(c)
		self.submit
		turn_to HiHomePage
	end
end
