#module 理解为一组方法的集合
#include module表示将module里的所有方法都定义成class的instance mathod
module Puruanimal
	def blood
		'warm'
	end

	def eat_milk?
		true
	end
end

module Fish
	def blood
		'cold'
	end

	def eat_milk?
		false
	end
end



class Human
	include Puruanimal
	attr_accessor :name, :age
	attr_reader :sex      #def sex @sex = sex 
	attr_writer :income   #def income=(new_income)

	def initialize(name,age,sex,income=nil) 
		@name = name 
		@age = age
		@sex = sex
	end

	def introduce()
		print "I am #{@name},I am #{@age} years old, I am a #{@sex}\n"
	end

#类方法，无须实例化，直接调用·
	def Human.home
		'earth'
	end

	def self.attr()  # = Human.attr
		"eat,sleep"
	end
#================================
end


class Man < Human
	attr_accessor :huzi
	def initialize(name,age,huzi)
		super(name,age,'man')#调用父类的同名方法
		@huzi = huzi
	end      
end

class Woman < Human
	def initialize(name,age)
		super(name,age,'woman')
	end
end

class Liyu
	include Fish
end

liyu = Liyu.new()
puts liyu.blood
puts liyu.eat_milk?


# tom = Human.new('tom',30,'man')
# tom.introduce
# tom.name="tommy"
# tom.age="35"
# puts tom.sex
# tom.income= 5000
# tom.introduce

tom = Man.new('tom',30,'white')
tom.introduce
puts tom.huzi

kitty = Woman.new('kitty',25)
kitty.introduce



