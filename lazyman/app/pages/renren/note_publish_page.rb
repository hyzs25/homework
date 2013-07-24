#encoding:utf-8
class NotePublishPage < LazymanPage

	page_url 'http://page.renren.com/601549975/note/new'

	#日志标题
	text_field :note_title, :id => 'title'
	#写日志内容
	def note_content= kw
		set_element = "document.getElementById('editor_ifr').contentWindow.document.body.innerText = '#{kw}'"
		sleep 2
		@browser.frame(:id,"editor_ifr").wait_until_present
		@browser.execute_script(set_element)
	end

	#提交按钮
	button :note_submit, :class => 'input-submit'
	#提交
	def note_submit_action title,content
		self.note_title = title
		sleep 1
		self.note_content= content
		sleep 1
		self.note_submit
		sleep 3
		turn_to NoteDetailPage
	end
	
end