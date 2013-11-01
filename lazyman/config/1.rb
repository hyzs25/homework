
require "fileutils" 

@nt = Time.now.strftime("%Y%m%d_%H%M%S")
puts File.expand_path("./app/reports/screenshot_#{@nt}")