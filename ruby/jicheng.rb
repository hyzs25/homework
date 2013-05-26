#类的多继承

module Fish
	def can_swiming?
		true
	end
end

module Puruanimal
	def blood
		'warm'
	end

	def eat_milk?
		true
	end
end

class Jinyu
	include Puruanimal
	include Fish
end

jy = Jinyu.new()
puts jy.can_swiming?
puts jy.blood
puts jy.eat_milk?