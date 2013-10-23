#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'
require 'win32ole'

describe "测试相册模块功能", :renrenp do

	before :all do	
		@photo1 = $data['photo']['single_photo']
		@des_content = Time.now.strftime("%Y-%m-%d %H:%M:%S")
	end

	it "测试单张发布照片功能是否正常" do
		$index = $navi.goto_index_page
		$photo_list = $index.publish_photo @photo1,@des_content
		$photo_detail = $photo_list.go_detail
		$photo_detail.description.should eq @des_content
	end

	it "测试minifeed是否收到2038新鲜事" do
		$index = $navi.goto_index_page
		puts $index.photo_minifeed.should be =~ /@des_content/

	end
	

end