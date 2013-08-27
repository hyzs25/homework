#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'

describe '测试状态功能',:renren do 

	before :all do
		@status = Time.now.strftime("%Y--%m--%d-%H:%M:%S")
		@status_At = "@common(601529633) "
		@reply_content = Time.now.to_s
	end 

	it "发布一条状态是否在minifeed显示" do
	  	$index = $navi.goto_index_page
		$index.publish_status @status
		$index.status_minifeed.should include @status
	end

	it "是否收到状态newsfeed新鲜事" do
		$www_index = $navi.goto_www_index_page
	    $www_index.status_feed.split(": ")[1].should == @status
	end

	it "状态列表页是否显示该状态" do
		$status_list = $navi.goto_status_list_page
		sleep 1
		$status_list.status.should == @status
	end

	it "状态列表页是否可以成功回复" do
		$status_list.reply_action @reply_content
		$status_list.new_reply.should == @reply_content
	end

	it "回复在newsfeed中可正常展示" do
		$www_index = $navi.goto_www_index_page
		$www_index.last_reply.split(": ")[1].should == @reply_content
	end

	it "删除状态是否可以成功" do
		$status_list = $navi.goto_status_list_page
		$status_list.status_delete_action
		$status_list.status.should_not == @status
	end

	it "状态中@功能是否正常" do
	  	$index = $navi.goto_index_page
		$index.publish_status @status_At
		$index.status_minifeed.should == "@common"
	end

	it "状态newsfeed新鲜事@显示是否正常" do
		$www_index = $navi.goto_www_index_page
	    $www_index.status_feed.split(": ")[1].should == "@common"
	end


end