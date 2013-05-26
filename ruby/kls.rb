=begin
module PuruAnimal
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

# 构造函数
# 当类被实例化的时候，自动去调用的函数


# 一组方法(函数)和属性的集合
# @开头的就是对象的实例变量，instance variable
# Kls include Module 表示将Module里的所有方法都定义成Kls中的instance method
class Human
	include PuruAnimal
	attr_accessor :name, :age
	attr_reader :sex # def sex() @sex; end 
	attr_writer :income # def income=(new_income) @income=new_income; end  
	def initialize(name, age, sex)
		@name = name 
		@age = age
		@sex = sex
	end 	
	def introduce()
		print "I am #{@name}, I am #{@age} years old, I am a #{@sex}."
	end 
	def Human.home()
		'earth'
	end 
	def self.attr() # Human.attr()
		'eat,sleep'
	end 
	
end 

class Man < Human
	attr_accessor :huzi
	def initialize(name, age, huzi)
		super(name, age, 'man')
		@huzi = huzi
	end 
end 

class Woman < Human
	def initialize(name, age)
		super(name, age, 'woman')
	end 
end 

class Liyu
	include Fish
end 

# tom = Man.new('tom', 30, 'black huzi')
# puts tom.blood
# puts tom.eat_milk?

liyu = Liyu.new()
puts liyu.blood
puts liyu.eat_milk?
# puts tom.huzi
# 30 years passed
# tom.age=60
# tom.huzi='white huzi'

# tom.introduce
# puts tom.huzi()

# module 理解成一组方法的集合

# puts Human.home()
# puts Human.attr()
# tom = Human.new('tom', 30, 'man')
# tom.introduce()
# tom.name="tommy"
# tom.age=35
# puts tom.sex
# tom.income = 5000
# tom.introduce()
# puts "tom's name is #{tom.name()}"
# puts "tom's age is #{tom.age()}"
# puts "tom's sex is #{tom.sex()}"
# kate = Person.new('kate', 15, 'woman')
# puts "kate's name is #{kate.name()}"
# puts "kate's age is #{kate.age()}"
# puts "kate's sex is #{kate.sex()}"

=end

module Fish 
	def can_swimming?
		true 
	end 
end 

module PuruAnimal
	def blood
		'warm'
	end 
	
	def eat_milk?
		true
	end 
end 

class Jingyu 
	include PuruAnimal
	include Fish
end 

jy = Jingyu.new()
puts jy.can_swimming?
puts jy.blood
puts jy.eat_milk?



