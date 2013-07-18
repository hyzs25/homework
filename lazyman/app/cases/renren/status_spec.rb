#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'

describe '测试状态功能',:renren do 

	before :all do
		@email = '119966710@qq.com'
		@password = 'hytesting'
		@status = Time.now.strftime("%Y--%m--%d-%H:%M:%S")
		@reply_content = Time.now.to_s

		@l = $navi.goto_login_page
		@l.login_action(@email,@password)
		@i = $navi.goto_index_page
	end 

	it "发布一条状态是否在minifeed显示" do
		@i.publish @status
		@i.status_feed.should include @status
	end


	it "是否收到状态newsfeed新鲜事" do
		@w = $navi.goto_www_index_page
		@w.status_feed.should include @status
	end

	it "状态列表页是否显示该状态" do
		@sta_list = $navi.goto_status_list_page
		sleep 1
		@sta_list.status.should include @status
	end

	it "状态minifeed新鲜事是否可以成功回复" do
		@i = $navi.goto_index_page
		@i.reply_action @reply_content
		@i.last_reply.should include @reply_content
	end

	it "删除状态是否可以成功" do
		@sta_list = $navi.goto_status_list_page
		@sta_list.status_delete_action
		@sta_list.status.should_not include @status
	end



end