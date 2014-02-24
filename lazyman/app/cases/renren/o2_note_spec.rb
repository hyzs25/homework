#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'

describe "测试日志模块" , :renren do

	before :all do
		@title = "blog_title #{Time.now.strftime("%Y--%m--%d-%H:%M:%S")}"
		@content = "blog_content 见贤思齐"		
	end
		

	it "测试发布日志是否可成功发布" do
		$note_publish = $navi.goto_note_publish_page
		$note_detail = $note_publish.note_submit_action(@title, @content)	
		$note_detail.note_title_text.should == @title
	end

	it "测试日志内容在日志终端页是否展示正确" do
		puts $note_detail.note_content
		$note_detail.note_content.should == @content
	end

	it "测试最新日志在列表页中展示正确" do
		$note_list = $navi.goto_note_list_page
		$note_list.new_note_title_element.text.should == @title
	end

	it "测试点击日志标题可正确跳转到终端页" do
		$note_detail = $note_list.goto_new_note_detail_page
		$note_detail.note_title_text.should == @title
	end

	it "测试日志newsfeed新鲜事是否收到" do
		$www_index = $navi.goto_www_index_page
#		$www_index.page_content_element.click
		$www_index.note_feed_title.should == @title
	end

#	it "测试日志minifeed新鲜事是否收到" do 
#		$index = $navi.goto_index_page
		

end