#encoding:utf-8
class NoteListPage < LazymanPage

  page_url 'http://page.renren.com/601549975/note'
  
  #发布日志按钮
  link :note_publish_button, :class => "add"
  #日志列表模块
  div :note_list, :class => 'list-blog'
  #第一个日志标题
  def new_note_title
     @browser.h3(:class =>'title-article', :index => 0).strong.text
  end

  def goto_new_note_detail_page
    self.note_list_element.link_element(:id => /\d{4}-\d{2}-\d{2}/, :index => 0).when_present.click
    turn_to NoteDetailPage
  end


end
