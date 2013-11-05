ENV.delete 'HTTP_PROXY' if ENV['HTTP_PROXY']
require 'rubygems' #for ruby187
require 'erb'
require 'psych'
require File.expand_path(File.join('.', 'config', "lazyman_formatter.rb"))
require 'mail'
#require 'win32ole'

begin
	require 'lazyman'
rescue LoadError
	puts 'you need using "gem install lazyman" to install lazyman first'
end


Lazyman::Initializer.new(File.expand_path(File.join('.')), 'lazyman')
$:.unshift(File.expand_path File.join('.'))

RSpec.configure do |c|
	c.treat_symbols_as_metadata_keys_with_true_values = true
	c.run_all_when_everything_filtered = true
	c.alias_example_to :test_case
	c.alias_it_should_behave_like_to :include_shared

	unless($config.tags.empty?)
		tags = case 
			when String
				$config.tags.lazy_to_hash
			when Hash
				$config.tags
			end #case
		c.filter_run tags
	end 

	def test_data file
		content = ''
		file_path = File.expand_path(File.join('.', 'app', 'test_data', "#{file}.yml"))
		raise "Can not find #{file}.yml" unless File.exists?(file_path)
		File.open(file_path, 'r') do |handle|
			content = handle.read
		end
		Psych.load ERB.new(content).result(binding)
	end
	
	c.before(:suite) do
		
		$data = test_data('page')
		$navi = LazymanNavigator.new $config
		$navi.driver.manage.window.maximize
		@email = '119966710@qq.com'
    	@password = 'hytesting'
		@l = $navi.goto_login_page
    	@l.login_action(@email,@password)
    
	end

	c.after(:suite) do

		$navi.close		
		puts a = Lazyman::LazymanFormatter.out
begin
		Mail.deliver do
   			from     'yang.he@renmren-inc.com'
   			to       'hyzs25@126.com'
   			subject  'renren_autotest_report'
   			body     "This is a report!"
   			add_file a 
		end
end
	end
end
