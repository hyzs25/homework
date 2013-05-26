class Person
	attr_accessor :name :age :sex
	def initialize(name,age,aex)
		@name = name
		@age = age
		@sex = sex
	end
=begin
	
rescue Exception => e
	
end
	def name()
		@name
	end

	def age
		@age
	end

	def sex
		@sex 
	end

	def name=(new_name)
		@name = new_name
	end

	def age=(new_age)
		@age = new_age
	end

	def sex=(new_sex)
		sex = new_sex
	end
=end
	def introduce()
		print "I am #{@name}, I am #{@age} years old"

end

tom = Person.new('tom',30,'male')
puts "tom'name is #{tom.name}"