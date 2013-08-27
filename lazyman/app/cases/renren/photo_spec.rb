#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'
require 'win32ole'

describe "测试相册模块功能", :renren do

	before :all do	
		@photo1 = '"0.jpg"'
	end

	it "测试单张发布照片功能是否正常" do
		$index = $navi.goto_index_page
		$index.publish_photo @photo1
	end

end