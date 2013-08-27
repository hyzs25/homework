#encoding:utf-8
class NoteDetailPage < LazymanPage

	def note_title_text
		@browser.div(:class, 'funcs clearfix').h2.text
	end
	#日志内容div
	div :note_content_div, :class => 'blog-content'
	#日志内容
	paragraph :note_content do |page|
		page.note_content_div_element.paragraph_element
	end

end