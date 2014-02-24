def keysAndValues(data)
  # TODO: complete
  a = Array.new 
  b = Array.new
  data.each do |k,v|
     a << k.to_sym
     b << v
  end
  
  c = [a,b]
  return c
end

puts keysAndValues(a: 3, b: 4, c: 5)