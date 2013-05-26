require "rspec"

class Calc
	def plus(a,b)
		a+b
	end

	def minus(a,b)
		a-b
	end
end


describe Calc do
	before(:each) do
		@clac = Calc.new
	end

	it "plus" do
		@clac.plus(1,1).should == 3
	end

	it "minus" do
		@clac.minus(1,1).should == 0
	end

end