s_array = "hello,world"


def resort(str)
	str_arr = str.split ""
	len = str_arr.length
	new_arr = Array.new

	(len-1).downto(0) do |i|
		new_arr[i] = str_arr[len-1-i]
	end

	return new_arr.join("")
end 

puts resort s_array