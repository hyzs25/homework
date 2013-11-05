require 'erb'
require 'rspec/core/formatters/html_formatter'
require "fileutils" 

module Lazyman
	class LazymanFormatter < ::RSpec::Core::Formatters::HtmlFormatter

		def initialize(output)
			@nt = Time.now.strftime("%Y%m%d_%H%M%S")
			o = File.expand_path(File.join('.', 'app', 'reports', "#{Time.now.strftime("%Y%m%d_%H%M%S")}.html"))
			@@out = o
			output = File.new(@@out, 'w')
			super(output)
			@printer.class.send(:define_method, 'puts') do |what|
				@output.puts what
			end #define_method
		end

		def self.out
			@@out
		end

		def example_failed(example)
			
			super(example)
			if $navi
				failed_url = $navi.url rescue $navi.current_url
				@printer.puts "<a target=\"_blank\" href=\"#{failed_url}\">failed url is [#{failed_url}]</a>" 
				@printer.puts '<br />'
				@printer.flush

				screenshot_dir =File.expand_path("./app/reports/screenshot_#{@nt}")
				
				unless File.exist?(screenshot_dir)
						FileUtils.mkdir screenshot_dir
				end
				screenshot_path = File.new(File.expand_path(File.join(screenshot_dir, "#{Time.now.strftime("%Y%m%d_%H%M%S")}.png")), "w+")
				$navi.driver.save_screenshot screenshot_path
			end #if
		end
	end #LazymanFormatter
end #Lazyman
