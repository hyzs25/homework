#encoding:utf-8
class NoteListPage < LazymanPage

  page_url "http://page.renren.com/#{$config.pageid}/channel-notelist"
  
  #第一个日志列表模块
#  div :new_note_list, :class => 'release-text-blog', :index => 0

  #第一个日志标题
  link :new_note_title, :class => 'title', :index => 0

  def goto_new_note_detail_page
#   self.note_list_element.link_element(:id => /\d{4}-\d{2}-\d{2}/, :index => 0).when_present.click
    self.new_note_title
    turn_to NoteDetailPage
  end


end
