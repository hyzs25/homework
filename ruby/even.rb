def even()
	i = []
	(1..100).each do |a| 
		if a%2 == 0
			i.push(a)
		end
	end
	puts i
end

even()