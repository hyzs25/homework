def gaosi(n)
    sum = 0
	if n <= 1
			puts "error"
	else
	``	(1..n).each do |i|
			sum = sum + i
		end
	end
	return sum
end

gaosi(100)