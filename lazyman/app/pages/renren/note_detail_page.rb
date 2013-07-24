#encoding:utf-8
class NoteDetailPage < LazymanPage

	def note_title_text
		@browser.h3(:class, 'title-article').strong.text
	end
	#日志内容div
	div :note_content_div, :id => 'blogContent'
	#日志内容
	paragraph :note_content do |page|
		page.note_content_div_element.paragraph_element
	end

end