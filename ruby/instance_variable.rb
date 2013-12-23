class Variable
	instance_variable_set :@my_var, "world"

	def my_var
		@my_var
	end
end

puts Variable.new.my_var