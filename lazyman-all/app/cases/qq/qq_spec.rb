#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'

describe '测试QQ',:qq do
	before :all do	
		@keyword = 'watir-webdriver'
	end

	it '测试QQ搜索功能' do
		$navi.driver.manage.window.maximize
		p = $navi.goto_qq_page
		#p.maximize
		result_page = p.search_for @keyword
		result_page.first_result.should eql 'Watir-webdriver_百度百科'
	end
end