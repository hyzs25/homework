#a = Array.[]('1','2','3')
#print a 

#puts "\n"
#puts a.at(0)      #=a[0]

#-----------------------------------------
#begin
#a = ['a','b','c','d','e']
#a.clear    #清空数组中的内容
#puts a
#b = a.collect {|x| x + '!'}
#puts b
#c = a.map { |y| y + '#'  }
#print c 
#puts a
#puts a.collect
#puts a.map! {|t| t.upcase }

#map与collect一样，为每个元素自身调用一次块，用块返回的值创建一个新的数组，但不替代原数组
#如果没有块参数，将返回一个枚举器
#map！和collect！返回的值直接替代了原数组
#end
#-----------------------------------------
=begin
##combination() 将一个数组进行组合，组合后生成新的数组

a = ['a','b','c','d','e']
puts a.combination(3).to_a
=end

#-------------------------------------------
begin
#compact返回一个没有nil的数组
a = ['a',nil,'b',nil,'c']
puts a.compact
end