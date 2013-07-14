#encoding: utf-8
require File.expand_path 'app/cases/spec_helper'

describe 'Baidu hi example show you how to use lazyman', :hi do

	before :all do
		
	end

	it 'should create post success' do
		create_post_page = $navi.goto_create_post_page
		create_post_page.login
		title = "my post #{Time.now.to_s}"
		content = '见贤思齐'
		home_page = create_post_page.create_post(title,content)
		sleep 3
		home_page.first_post_element.when_present
		home_page.first_post.should include('my post')
	end

end
