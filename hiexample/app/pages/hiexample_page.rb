#encoding: utf-8

class HiexamplePage < Lazyman::Page

	def login 
		uid = '0173F00E405FDBFA6CAD5C03EA730B81'
		bduss = '3N0RG5IaEZRc1k1WGg0ZUQ3LVoxSkZjR3FSVHhyckt4WU5-YVgzb1FCLTVafmRSQVFBQUFBJCQAAAAAAAAAAAEAAABvHwcBaHl6czI1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALnaz1G52s9Rb'
		@browser.cookies.clear
		@browser.cookies.add("BAIDUID", uid)
		@browser.cookies.add("BDUSS", bduss)
		goto
	end

end
